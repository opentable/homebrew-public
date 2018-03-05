class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.72"
  sha256 "9a3bbbbee68165379a53ac5c44c75d90e151b3095f5ff4247dfa2908200198cb"

  url "https://github.com/opentable/sous/releases/download/0.5.72/sous-darwin-amd64_0.5.72.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
