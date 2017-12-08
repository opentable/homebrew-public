class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.58"
  sha256 "24284df31a4d71f9c25bbb712f950d1055fd519c399175a3e15ba6c15fe899b1"

  url "https://github.com/opentable/sous/releases/download/0.5.58/sous-darwin-amd64_0.5.58.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
