class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.42"
  sha256 "21c0b2b69e46abedf69514e2b594097af9832df1904ce6930821de175a3d3ab1"

  url "https://github.com/opentable/sous/releases/download/0.5.42/sous-darwin-amd64_0.5.42.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
