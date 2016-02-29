class HykesProvision < Formula
  homepage "https://github.com/cloud-elements/hykes-provision"
  url "https://github.com/cloud-elements/hykes-provision/archive/v0.1.0.tar.gz"
  sha256 "22c6b5c795ec0cc5e88b82656a4c9f07b7cc6320f8335720cc758b911fdcb8d9"

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
