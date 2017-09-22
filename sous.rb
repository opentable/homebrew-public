class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.34"
  sha256 "253656accdb5ac90499f3b1f256e6cd4355b2687192a69b0b8c000df9912a902"

  url "https://github.com/opentable/sous/releases/download/0.5.34/sous-darwin-amd64_0.5.34.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
