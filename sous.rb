class Sous < Formula
  desc "Sous tool for building and deploying at OpenTable"
  homepage "https://github.com/opentable/sous"

  # When the version of Sous changes, these two fields need to be updated
  version "0.5.36"
  sha256 "0fe2456fefc7ea3d9dd2dff0f8d49a5e108e5dee0ec482307a8e7ebb908fba3c"

  url "https://github.com/opentable/sous/releases/download/0.5.36/sous-darwin-amd64_0.5.36.tar.gz"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    bin.install "sous"
  end

  test do
    system "sous", "version"
  end
end
