class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.52"
  sha256 "d0fda2b1c334f428f8ed2f22ef37c0a8f878386a1f5144ee1d04f03643d21bed"

  url "https://github.com/opentable/sous/releases/download/0.5.52/sous-darwin-amd64_0.5.52.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
