class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.109"
  sha256 "268a3ab041295f0af41f1c454f14bd7a492bc90f4e2afd2dd1a2d17f9cb9b04f"

  url "https://github.com/opentable/sous/releases/download/0.5.109/sous-darwin-amd64_0.5.109.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
