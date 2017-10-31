class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.50"
  sha256 "db739467a97df640f1bdfeb822e8d993bf4555fca1c9f042fe9281a303e0e73a"

  url "https://github.com/opentable/sous/releases/download/0.5.50/sous-darwin-amd64_0.5.50.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
