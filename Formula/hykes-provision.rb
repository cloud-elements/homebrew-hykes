class HykesProvision < Formula
  homepage "https://github.com/cloud-elements/hykes-provision"
  url "https://github.com/cloud-elements/hykes-provision/archive/v0.0.2.tar.gz"
  sha256 "b4bcd38d1a35da21cea730ec076ee0b9422bda828204eae45bc99d7ea8cc878d"

  depends_on "coreutils"
  depends_on "hykes-blueprint"

  def install
    bin.mkpath
    (etc/"hykes-provision").mkpath
    system "make", "install", "bindir=#{bin}", "etcdir=#{etc}/hykes-provision"
  end

  test do
    system "hykes-provision", "--help"
  end
end
