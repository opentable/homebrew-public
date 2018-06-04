class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.100"
  sha256 "2ccfbb0b32133bb449844409e488b620eb3d29c490cd2bf3246cdd48a81df1ed"

  url "https://github.com/opentable/sous/releases/download/0.5.100/sous-darwin-amd64_0.5.100.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
