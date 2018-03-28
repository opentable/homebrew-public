class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.80"
  sha256 "43360c95d01d5f7785521d6cd73ba30f6565305b1505b26fa41ccf28760afef2"

  url "https://github.com/opentable/sous/releases/download/0.5.80/sous-darwin-amd64_0.5.80.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
