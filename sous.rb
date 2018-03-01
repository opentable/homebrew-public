class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.70"
  sha256 "8de84f6a07352f097b64a693705c92a360c2d2c85806f3f41ca91abf4f24f005"

  url "https://github.com/opentable/sous/releases/download/0.5.70/sous-darwin-amd64_0.5.70.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
