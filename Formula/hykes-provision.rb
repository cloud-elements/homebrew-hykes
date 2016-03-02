class HykesProvision < Formula
  homepage "https://github.com/cloud-elements/hykes-provision"
  url "https://github.com/cloud-elements/hykes-provision/archive/v0.2.0.tar.gz"
  sha256 "1ac5b78895163f2f5568177ce382034cb847cb387ba80b9e1739200f6e389b65"

  depends_on "coreutils"
  depends_on "hykes-blueprint"

  def install
    bin.mkpath
    (etc/"hykes-provision").mkpath
    system "make", "install", "bindir=#{bin}"
  end

  test do
    system "hykes-provision", "--help"
  end
end
