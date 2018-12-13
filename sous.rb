class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.6.0"
  sha256 "62a3f41a9b0bb9b28bb6a5083e523f3fe62334f6770b5b5ba9fb562910fd3acb"

  url "https://github.com/opentable/sous/releases/download/0.6.0/sous-darwin-amd64_0.6.0.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
