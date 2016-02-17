class HykesBlueprint < Formula
  homepage "https://github.com/cloud-elements/hykes-blueprint"
  url "https://github.com/cloud-elements/hykes-blueprint/archive/v0.0.2.tar.gz"
  sha256 "846904ea27eb838b7bd8db1f1aa1602be495043c4c09e365890659de0ca16a63"

  depends_on "ansible"
  depends_on "coreutils"
  depends_on "git"

  def install
    bin.mkpath
    (etc/"hykes-blueprint").mkpath
    system "make", "install", "bindir=#{bin}", "etcdir=#{etc}/hykes-blueprint"
  end

  test do
    system "hykes-blueprint", "--help"
  end
end
