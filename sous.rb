class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.39"
  sha256 "3e69308c2d9b7b976032ec087cf9c39b1905c00eda620ba3d6cef877b54d30ae"

  url "https://github.com/opentable/sous/releases/download/0.5.39/sous-darwin-amd64_0.5.39.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
