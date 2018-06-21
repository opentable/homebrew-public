class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.107"
  sha256 "f6643f99c58cc154a85efc94c4e25e44163e47b2ea041578a72e411365623a7a"

  url "https://github.com/opentable/sous/releases/download/0.5.107/sous-darwin-amd64_0.5.107.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
