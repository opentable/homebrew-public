class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.111"
  sha256 "03bc6523a208407bb3540a557fd61e73ce40ab964b1f75a4667846cc509610ec"

  url "https://github.com/opentable/sous/releases/download/0.5.111/sous-darwin-amd64_0.5.111.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
