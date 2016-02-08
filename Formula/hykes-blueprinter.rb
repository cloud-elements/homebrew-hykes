class HykesBlueprinter < Formula
  homepage "https://github.com/cloud-elements/hykes-blueprinter"
  url "https://github.com/cloud-elements/hykes-blueprinter/archive/v0.0.1.tar.gz"
  sha256 "e21dd766f8b16564ef2d0de7535608b71306316c0a9196bc9c4ac539ac507295"

  depends_on "ansible"
  depends_on "coreutils"
  depends_on "git"

  def install
    bin.mkpath
    (etc/"hykes-blueprinter").mkpath
    system "make", "install", "bindir=#{bin}", "etcdir=#{etc}/hykes-blueprinter"
  end

  test do
    system "hykes-blueprinter", "--help"
  end
end
