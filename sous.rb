class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.15"
  sha256 "932dda8e4355fb5eb41995ecc179e9fe165265ba277c61bf1bbabe07ad78e36f"

  url "https://github.com/opentable/sous/releases/download/0.5.15/sous-darwin-amd64_0.5.15.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
