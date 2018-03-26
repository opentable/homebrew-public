class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.76"
  sha256 "8ce679a5e8ab64fb76f3e0ed33c7610623e9c9e08c4e294a343dd99b5a2e3193"

  url "https://github.com/opentable/sous/releases/download/0.5.76/sous-darwin-amd64_0.5.76.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
