class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.45"
  sha256 "3c7378dd89f2118c62ca0962a8e4e844c0a76e425a4474ecf7c857a5623e0f15"

  url "https://github.com/opentable/sous/releases/download/0.5.45/sous-darwin-amd64_0.5.45.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
