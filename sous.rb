class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.108"
  sha256 "10dbd77d39693c5924959ee44b599c98ab7f601d5cf4b3c43da74fea9f3dfa1a"

  url "https://github.com/opentable/sous/releases/download/0.5.108/sous-darwin-amd64_0.5.108.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
