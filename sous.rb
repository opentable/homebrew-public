class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.28"
  sha256 "343d3e0bc8ecf56d74f8e3ab13617a95bc5bbb34d4e73383a31bb973e4a93ca8"

  url "https://github.com/opentable/sous/releases/download/0.5.28/sous-darwin-amd64_0.5.28.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
