class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.22"
  sha256 "b3340e4d312401a7951326fb8f6c615ca752311bbbe47fdd7dc79b3eb7be0628"

  url "https://github.com/opentable/sous/releases/download/0.5.22/sous-darwin-amd64_0.5.22.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
