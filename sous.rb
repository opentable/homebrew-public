class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.33"
  sha256 "dc7cfc3175ac239f0029d3d5ea0cad87635367bf349fedc932a388745458743a"

  url "https://github.com/opentable/sous/releases/download/0.5.33/sous-darwin-amd64_0.5.33.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
