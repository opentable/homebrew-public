class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.47"
  sha256 "3450c9c8f0ea82d78d0f3c0e63dd7c6e02f05715ae63ec743d484c2f7e5b9da1"

  url "https://github.com/opentable/sous/releases/download/0.5.47/sous-darwin-amd64_0.5.47.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
