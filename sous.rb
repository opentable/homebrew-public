class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.84"
  sha256 "69ab45ac57de70ab46b589970e021f5e57ae5c2d9ed33bee403f032b93c8c3a5"

  url "https://github.com/opentable/sous/releases/download/0.5.84/sous-darwin-amd64_0.5.84.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
