class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.61"
  sha256 "f97dc153f00f14bc831a5bf9caf98c5f727ed4c5ca21c2f8d506b61870a3704e"

  url "https://github.com/opentable/sous/releases/download/0.5.61/sous-darwin-amd64_0.5.61.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
