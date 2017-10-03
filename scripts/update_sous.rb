#!/usr/bin/env ruby

require 'octokit'
require 'erb'
require 'net/http'

Context = Struct.new(:version, :url, :sha256)
class Context
  def bind
    return binding
  end
end

def http_digest(url)
  loop do
    Net::HTTP.get_response(URI(url)) do |res|
      case res
      when Net::HTTPOK
        digest = Digest::SHA256.new

        res.read_body do |chunk|
          digest.update(chunk)
        end
        return digest.hexdigest
      when Net::HTTPFound, Net::HTTPPermanentRedirect, Net::HTTPTemporaryRedirect
        url = res["Location"]
      else
        puts "Not OK response on URL: #{res.class} #{res.code} #{res.message} #{res.body}"
        exit 2
      end
    end
  end
end

def run(string)
  puts "> #{string}"
  puts %x{#{string}}
end

run "git pull"

rel_name = ARGV[0]

client = Octokit.root
if ENV.key?("GITHUB_TOKEN")
  client = Octokit::Client.new(access_token: ENV["GITHUB_TOKEN"]).root
end

repo = client.rels[:repository].get(uri: {owner: "opentable", repo: "sous"}).data

releases = repo.rels[:releases].get.data

release = releases.find{|rel| rel[:tag_name] == rel_name}

if release == nil
  puts "No release found with name '#{rel_name}' - found: #{releases.map{|rel| rel[:tag_name]}.inspect}"
  exit 1
end

asset = release.assets.find{|a| a.name =~ /darwin/}

asset_url = asset.browser_download_url

digest = http_digest(asset_url)

context = Context.new(rel_name, asset_url, digest)
erb = ERB.new(File.read("sous.rb.erb"))
File.open("sous.rb", "w") do |sous|
  sous.write(erb.result(context.bind))
end
puts "Updated sous.rb with #{context.inspect}"

run "git commit -am 'Updating Sous to #{rel_name}'"
run "git push"
