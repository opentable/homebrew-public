class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.85"
  sha256 "692a6b3957863a30ed408bd846bc5c2e6764d27dcacd3ae787523ddcb0eb0ea4"

  url "https://github.com/opentable/sous/releases/download/0.5.85/sous-darwin-amd64_0.5.85.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
