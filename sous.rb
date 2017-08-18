class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.27"
  sha256 "f4666041e9045eaa170c0fb55a506a415548e89fd130ada183aedd8d2080c6fe"

  url "https://github.com/opentable/sous/releases/download/0.5.27/sous-darwin-amd64_0.5.27.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
