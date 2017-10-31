class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.49"
  sha256 "4b2dfee1cbabc918ebf9dcdb58a48ef57208486dab8b8e10f0ee6bc8d1de0ada"

  url "https://github.com/opentable/sous/releases/download/0.5.49/sous-darwin-amd64_0.5.49.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
