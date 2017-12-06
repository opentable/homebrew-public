class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.57"
  sha256 "60c65b2d94207a9d14ed5d966aeb735a90672e651132f5edaa13a8dc79165620"

  url "https://github.com/opentable/sous/releases/download/0.5.57/sous-darwin-amd64_0.5.57.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
