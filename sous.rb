class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.14"
  sha256 "f1216722615b691681e3e1d7eade33d3073c645e1c32c51fa9a99e3054db0478"

  url "https://github.com/opentable/sous/releases/download/0.5.14/sous-darwin-amd64_0.5.14.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
