class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.104"
  sha256 "71a24cd9b1db9329b02d4acfee758e7983f00a2d3240148c1821cd7f26ba6936"

  url "https://github.com/opentable/sous/releases/download/0.5.104/sous-darwin-amd64_0.5.104.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
