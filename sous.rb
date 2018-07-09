class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.110"
  sha256 "4f391d947c1df5e7b6268f4a9fa0ddbb04ca27b48f468c63387cfec40df2a471"

  url "https://github.com/opentable/sous/releases/download/0.5.110/sous-darwin-amd64_0.5.110.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
