class HykesProvisioner < Formula
  homepage "https://github.com/cloud-elements/hykes-provisioner"
  url "https://github.com/cloud-elements/hykes-provisioner/archive/v0.0.0.tar.gz"
  sha256 "210def8726ed297f87701a74fc2722a7a34e46b3fdb917a389573cafa5baac98"

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
