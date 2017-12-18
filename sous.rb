class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.60"
  sha256 "e27777a678ad67ed6a3a222f46117db7e42f282d750efc70b831e864b36ce5ee"

  url "https://github.com/opentable/sous/releases/download/0.5.60/sous-darwin-amd64_0.5.60.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
