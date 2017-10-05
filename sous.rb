class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.41"
  sha256 "fda3a078fea50aaff53c4e05909b909f4a66e83b73b5526b212b186722bc0b46"

  url "https://github.com/opentable/sous/releases/download/0.5.41/sous-darwin-amd64_0.5.41.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
