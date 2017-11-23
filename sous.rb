class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.56"
  sha256 "aa22a7b9855b4cd23961f421820513f01042b848f16ed4435dafc4de6125ba13"

  url "https://github.com/opentable/sous/releases/download/0.5.56/sous-darwin-amd64_0.5.56.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
