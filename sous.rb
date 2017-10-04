class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.40"
  sha256 "c737d59355e224ad07667e2295ef98fedb77c5b858d6a0254113ce6700db06c5"

  url "https://github.com/opentable/sous/releases/download/0.5.40/sous-darwin-amd64_0.5.40.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
