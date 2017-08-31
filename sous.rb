class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.31"
  sha256 "820ed1c58ad38f7f78a23b003bcbda541fe91196a7d54931fc49f2632235207b"

  url "https://github.com/opentable/sous/releases/download/0.5.31/sous-darwin-amd64_0.5.31.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
