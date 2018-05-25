class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.99"
  sha256 "9e59147e7d15d59710274990389b15fb70cadbcacf4834bad005d6758e4dd77c"

  url "https://github.com/opentable/sous/releases/download/0.5.99/sous-darwin-amd64_0.5.99.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
