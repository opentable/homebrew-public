class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.29"
  sha256 "ad1e70957a1326d1c072d326fba28d1b9129924b6508c522883c7cfc589ee552"

  url "https://github.com/opentable/sous/releases/download/0.5.29/sous-darwin-amd64_0.5.29.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
