class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.87"
  sha256 "13e5e3a125dc003a5eec78cfcf7d1bf57413e62302d4266ceccb750085b426ba"

  url "https://github.com/opentable/sous/releases/download/0.5.87/sous-darwin-amd64_0.5.87.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
