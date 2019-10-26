class Underblog < Formula
  desc "Extremely simple static blog generator "
  homepage "https://github.com/freetonik/underblog"
  url "https://github.com/freetonik/underblog/releases/download/v0.2.1/underblog_0.2.1_darwin_amd64.tar.tar.gz"
  sha256 "1eb2cc581b7c75a873fe7792876174085d74611b2c396de7a51b51e2b361c1fa"

  bottle :unneeded

  def install
    bin.install "underblog"
  end

  test do
    system "#{bin}/underblog", "--version"
  end
end
