class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.3"
  sha256 "7a08f4719c38647d1bcdeafdba16e387fade6efa0e5c095809592dcda18ce17a"

  url "https://github.com/opentable/sous/releases/download/0.5.3/sous-darwin-amd64_0.5.3.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
