class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.65"
  sha256 "04fbf6b97bc0f5de77e11a29cc90efc316f5fced844acfcbac5fc81bf75bc53e"

  url "https://github.com/opentable/sous/releases/download/0.5.65/sous-darwin-amd64_0.5.65.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
