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

rel_name = ARGV[0]

client = Octokit.root
if ENV.key?("GITHUB_TOKEN")
  client = Octokit::Client.new(access_token: ENV["GITHUB_TOKEN"]).root
end

repo = client.rels[:repository].get(uri: {owner: "opentable", repo: "sous"}).data

releases = repo.rels[:releases].get.data

releases.each do |rel|
  puts rel[:tag_name]
end
