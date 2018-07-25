class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.115"
  sha256 "fd7709c3c8d95a2c1f8114342442860b8fceffd5a2acd1afa7d4a7a01a2ec4c9"

  url "https://github.com/opentable/sous/releases/download/0.5.115/sous-darwin-amd64_0.5.115.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
