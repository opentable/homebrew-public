class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.91"
  sha256 "a17abf74329521526c784305472860480b7b79a537c32b31edfe7f4708deb9a0"

  url "https://github.com/opentable/sous/releases/download/0.5.91/sous-darwin-amd64_0.5.91.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
