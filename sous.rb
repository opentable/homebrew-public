class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.37"
  sha256 "dcc7fa9f051ca5f4559d9607a1a06da95e3d01efb60d7dddfc11de4a59a3514a"

  url "https://github.com/opentable/sous/releases/download/0.5.37/sous-darwin-amd64_0.5.37.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
