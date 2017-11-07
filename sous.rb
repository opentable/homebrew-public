class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.53"
  sha256 "b898783044f1bfbbc50318fe157edc6611f9cd95b7850103508ca60507cb3a73"

  url "https://github.com/opentable/sous/releases/download/0.5.53/sous-darwin-amd64_0.5.53.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
