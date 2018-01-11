class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.62"
  sha256 "52c324647419e0b8c483833d586f2148b97cb01f552e8ab778f9da9968cfe8a4"

  url "https://github.com/opentable/sous/releases/download/0.5.62/sous-darwin-amd64_0.5.62.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
