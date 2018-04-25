class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.88"
  sha256 "a5e4b668394f90fceec7541b367a965054db2d4c6a515a1d4b71196c9c0eb28c"

  url "https://github.com/opentable/sous/releases/download/0.5.88/sous-darwin-amd64_0.5.88.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
