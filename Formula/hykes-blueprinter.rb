class HykesBlueprinter < Formula
  homepage "https://github.com/cloud-elements/hykes-blueprinter"
  url "https://github.com/cloud-elements/hykes-blueprinter/archive/v0.0.0.tar.gz"
  sha256 "995615dcdda202a6225def140803eae2703c0bdf2a56493430cce8ca411bbd7f"

  def install
    bin.mkpath
    (etc/"hykes-blueprinter").mkpath
    system "make", "install", "bindir=#{bin}", "etcdir=#{etc}/hykes-blueprinter"
  end

  depends_on "ansible"
  depends_on "coreutils"
  depends_on "git"

  test do
    system "hykes-blueprinter", "--help"
  end
end
