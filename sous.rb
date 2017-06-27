class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.16"
  sha256 "43fca7a1dd1e12b57ac4c18bff47d3bca31db522cd2526093dd20d46720f88f4"

  url "https://github.com/opentable/sous/releases/download/0.5.16/sous-darwin-amd64_0.5.16.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
