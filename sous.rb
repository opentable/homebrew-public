class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.114"
  sha256 "8e8c246e680aa083e3649f46471840382280af5d9e53c2d0fc7b28530ea177c0"

  url "https://github.com/opentable/sous/releases/download/0.5.114/sous-darwin-amd64_0.5.114.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
