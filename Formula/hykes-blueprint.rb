class HykesBlueprint < Formula
  homepage "https://github.com/cloud-elements/hykes-blueprint"
  url "https://github.com/cloud-elements/hykes-blueprint/archive/v0.1.0.tar.gz"
  sha256 "4a7d40da8abfe3c8ba5578da06b06e4f90c87b80c9a7d738011ede23e7edb8e0"

  depends_on "ansible"
  depends_on "coreutils"
  depends_on "git"

  def install
    bin.mkpath
    (etc/"hykes-blueprint").mkpath
    system "make", "install", "bindir=#{bin}"
  end

  test do
    system "hykes-blueprint", "--help"
  end
end
