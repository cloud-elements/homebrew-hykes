class HykesProvision < Formula
  homepage "https://github.com/cloud-elements/hykes-provision"
  url "https://github.com/cloud-elements/hykes-provision/archive/v0.2.1.tar.gz"
  sha256 "581f9c1f1e643a89634de8b987bdb5bcf607177118af1be0dd6f3eef7d833916"

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
