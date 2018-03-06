class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.74"
  sha256 "ec62e49e6329778b652d72871155292dfeff50fbd4d3f9373844bcf00a5f6d84"

  url "https://github.com/opentable/sous/releases/download/0.5.74/sous-darwin-amd64_0.5.74.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
