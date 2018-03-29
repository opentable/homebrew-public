class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.81"
  sha256 "70994dccca48b26809aeb913b55e1c53327ef51bc9e5ad33697c7d64e36420d8"

  url "https://github.com/opentable/sous/releases/download/0.5.81/sous-darwin-amd64_0.5.81.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
