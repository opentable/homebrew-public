class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.23"
  sha256 "61a9b990e569c30ef1733c0a9733302b0b42439c9080ef84dd973e86f0cd3ff0"

  url "https://github.com/opentable/sous/releases/download/0.5.23/sous-darwin-amd64_0.5.23.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
