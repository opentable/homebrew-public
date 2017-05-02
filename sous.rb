class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.1"
  sha256 "33bf0702764ebf294a46d01e83b2ee4cd15cf907b8b02e65c8758ee9cbcdf835"

  url "https://github.com/opentable/sous/releases/download/0.5.1/sous-darwin-amd64_0.5.1.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
