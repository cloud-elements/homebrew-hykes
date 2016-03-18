class HykesProvision < Formula
  homepage "https://github.com/cloud-elements/hykes-provision"
  url "https://github.com/cloud-elements/hykes-provision/archive/v0.3.0.tar.gz"
  sha256 "4a45e552e588e9c8029efe0bc3d32c7e810993009cbf04d87ca9e04b76759e9f"

  depends_on "coreutils"
  depends_on "hykes-blueprint"

  def install
    bin.mkpath
    system "make", "install", "bindir=#{bin}"
  end

  test do
    system "hykes-provision", "--help"
  end
end
