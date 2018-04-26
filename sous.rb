class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.89"
  sha256 "3e15412f6ab55b2273c1b62f9302673f06874cef724726f0c0017adcf49fd7d3"

  url "https://github.com/opentable/sous/releases/download/0.5.89/sous-darwin-amd64_0.5.89.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
