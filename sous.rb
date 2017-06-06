class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.12"
  sha256 "582db3ada6352d6f7231a663f73aee2790d09cba644fab4710872e4c1137ed72"

  url "https://github.com/opentable/sous/releases/download/0.5.12/sous-darwin-amd64_0.5.12.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
