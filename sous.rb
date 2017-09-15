class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.32"
  sha256 "fbe44a2f0322ed59073040e0f1041073970c4d981dc8ae5c7b977817b0731136"

  url "https://github.com/opentable/sous/releases/download/0.5.32/sous-darwin-amd64_0.5.32.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
