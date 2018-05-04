class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.92"
  sha256 "53c3b4a691eb8a0d99104ecd9564b774a76a52e3561eea61c0ec093615f1605f"

  url "https://github.com/opentable/sous/releases/download/0.5.92/sous-darwin-amd64_0.5.92.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
