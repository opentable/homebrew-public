class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.43"
  sha256 "be0de8420f6722c510dc09e391b5ddd0912e3fbe5456367cb44df392864cb50c"

  url "https://github.com/opentable/sous/releases/download/0.5.43/sous-darwin-amd64_0.5.43.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
