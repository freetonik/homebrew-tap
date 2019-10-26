class Underblog < Formula
  desc "Extremely simple static blog generator "
  homepage "https://github.com/freetonik/underblog"
  url "https://github.com/freetonik/underblog/releases/download/v0.2/underblog_0.2_darwin_amd64.tar.gz"
  sha256 "6976a77ec7dfd2c8c704addedea3f56207adfd73b174c2f83a28620517a97d28"

  bottle :unneeded

  def install
    bin.install "underblog"
  end

  test do
    system "#{bin}/underblog", "--version"
  end
end
