class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.59"
  sha256 "5fee7f8e18b3949a0022ec23540eddf4fb75d3abc92e6a0d91cd8bd86ce5b3a6"

  url "https://github.com/opentable/sous/releases/download/0.5.59/sous-darwin-amd64_0.5.59.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
