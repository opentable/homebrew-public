class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.101"
  sha256 "004ec18e182cb64bda2d790bfbb4d46f02bfa9d224b847364f7b467c76fc3aba"

  url "https://github.com/opentable/sous/releases/download/0.5.101/sous-darwin-amd64_0.5.101.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
