class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.119"
  sha256 "53476cc06476b689a5084f65c4bad386eadf4533c1675de5541eb278406580ec"

  url "https://github.com/opentable/sous/releases/download/0.5.119/sous-darwin-amd64_0.5.119.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
