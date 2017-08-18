class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.26"
  sha256 "4a0793e59cd1734d60439d01d3f2146686bbbc8527eb2153ec688d0d33981fdb"

  url "https://github.com/opentable/sous/releases/download/0.5.26/sous-darwin-amd64_0.5.26.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
