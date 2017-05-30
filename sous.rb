class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.7"
  sha256 "6f5d75de10323a0215791854fb4bf9cfb1bd401452a77347db6b339353a4b6c5"

  url "https://github.com/opentable/sous/releases/download/0.5.7/sous-darwin-amd64_0.5.7.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
