class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.102"
  sha256 "a2a538768b03dbde09f68e75fc3097e31552fa51848de471138b51f9a9a5c5bf"

  url "https://github.com/opentable/sous/releases/download/0.5.102/sous-darwin-amd64_0.5.102.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
