class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.55"
  sha256 "0eac1bb6603a70d1dce3ea3f6af01d8223d9107494fdf5ea1b5a66221e51961b"

  url "https://github.com/opentable/sous/releases/download/0.5.55/sous-darwin-amd64_0.5.55.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
