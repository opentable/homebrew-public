class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.90"
  sha256 "f163a8f9898907e082f19c4af29f98909373270fc3cc6f1a8384f337b29292e4"

  url "https://github.com/opentable/sous/releases/download/0.5.90/sous-darwin-amd64_0.5.90.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
