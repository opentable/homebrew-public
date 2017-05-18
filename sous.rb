class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.4"
  sha256 "2639d54b2b7d95beb9b72bbe272f4b38d7791d2ceeb7affa02a2f6241f7ac28c"

  url "https://github.com/opentable/sous/releases/download/0.5.4/sous-darwin-amd64_0.5.4.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
