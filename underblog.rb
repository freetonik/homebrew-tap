class Delta < Formula
  desc "Extremely simple static blog generator "
  homepage "https://github.com/freetonik/underblog"
  url "https://github.com/freetonik/underblog/releases/download/v0.1.2/underblog_0.1.2_darwin_amd64.tar.gz"
  sha256 "b9ba6dd1713ec178d7326c32ca7ddb6e86e965ae1ead4e69ba5ae3b88c1239f9"

  bottle :unneeded

  def install
    bin.install "underblog"
  end

  test do
    system "#{bin}/underblog", "--version"
  end
end
