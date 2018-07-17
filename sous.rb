class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.113"
  sha256 "96d2de43148f17709ab4e0f29fa7feba018d8c0195f57ab0a119f34ad0e3dcd2"

  url "https://github.com/opentable/sous/releases/download/0.5.113/sous-darwin-amd64_0.5.113.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
