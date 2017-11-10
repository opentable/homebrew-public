class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.54"
  sha256 "d6cc55753e477cea3b00aea2d7f95322824e3f6bd576ce33ab7bd1c1f219bf60"

  url "https://github.com/opentable/sous/releases/download/0.5.54/sous-darwin-amd64_0.5.54.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
