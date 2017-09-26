class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.35"
  sha256 "ee0a92489c06dd6f13ff81b03d01f5891d00a4a17d2e12a7cf1550a58f976140"

  url "https://github.com/opentable/sous/releases/download/0.5.35/sous-darwin-amd64_0.5.35.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
