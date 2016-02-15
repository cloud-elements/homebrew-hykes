class HykesProvisioner < Formula
  homepage "https://github.com/cloud-elements/hykes-provisioner"
  url "https://github.com/cloud-elements/hykes-provisioner/archive/v0.0.1.tar.gz"
  sha256 "792d3d31983c8c22c8c524c83cb791de1626badd5988c46ca1cf5454e99eb344"

  depends_on "coreutils"
  depends_on "hykes-blueprinter"

  def install
    bin.mkpath
    (etc/"hykes-provisioner").mkpath
    system "make", "install", "bindir=#{bin}", "etcdir=#{etc}/hykes-provisioner"
  end

  test do
    system "hykes-provisioner", "--help"
  end
end
