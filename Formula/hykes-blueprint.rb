class HykesBlueprint < Formula
  homepage "https://github.com/cloud-elements/hykes-blueprint"
  url "https://github.com/cloud-elements/hykes-blueprint/archive/v0.2.0.tar.gz"
  sha256 "29abcdc6ec11a51b323eaf5082f704e3b320820095004fcb221d85dc0a7dad05"

  depends_on "ansible"
  depends_on "coreutils"
  depends_on "git"

  def install
    bin.mkpath
    system "make", "install", "bindir=#{bin}"
  end

  test do
    system "hykes-blueprint", "--help"
  end
end
