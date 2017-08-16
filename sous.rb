class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.24"
  sha256 "398133919b262a8ffcaf5f84c7cc202f236a8170e429b815c75ff10fedeb4f98"

  url "https://github.com/opentable/sous/releases/download/0.5.24/sous-darwin-amd64_0.5.24.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
