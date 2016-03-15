class HykesEngine < Formula
  homepage "https://github.com/cloud-elements/hykes-engine"
  url "https://github.com/cloud-elements/hykes-engine/archive/v0.0.0.tar.gz"
  sha256 "d8805e75e28ac0fa70acb41239c59f483a31f55f7678ddb3655ddadfdddc1cc9"

  depends_on "ansible"
  depends_on "coreutils"

  def install
    bin.mkpath
    (lib/"hykes-engine").mkpath
    system "make", "install", "bindir=#{bin}",  "libdir=#{lib}/hykes-engine"
  end

  test do
    system "hykes-engine", "--help"
  end
end
