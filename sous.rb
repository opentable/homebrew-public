class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.30"
  sha256 "0fd54f8704cb2053da7c3dc18720b8318df05ca81d196b9d4bf7fc47239ee105"

  url "https://github.com/opentable/sous/releases/download/0.5.30/sous-darwin-amd64_0.5.30.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
