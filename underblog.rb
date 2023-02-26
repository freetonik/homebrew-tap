class Underblog < Formula
  desc "Extremely simple static blog generator "
  homepage "https://github.com/freetonik/underblog"
  url "https://github.com/freetonik/underblog/releases/download/v0.2.3/underblog-darwin-amd64-v0.2.3.tar.gz"
  sha256 "a18e53f1839b7502f2f28ee8a37a15d517fd53b2f7db203b9f5519c81e3c92de"

  bottle :unneeded

  def install
    bin.install "underblog"
  end

  test do
    system "#{bin}/underblog", "--version"
  end
end
