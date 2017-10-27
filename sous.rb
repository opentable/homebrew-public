class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.48"
  sha256 "234d80cccc4df343ce32cfdcc0cb33f30ee24cc581fa79446db9e4776cfd9667"

  url "https://github.com/opentable/sous/releases/download/0.5.48/sous-darwin-amd64_0.5.48.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
