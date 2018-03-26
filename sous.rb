class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.77"
  sha256 "e04994f946e1e7f6a56724fe90e519f448879f551de1927488b47ac546ed135f"

  url "https://github.com/opentable/sous/releases/download/0.5.77/sous-darwin-amd64_0.5.77.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
