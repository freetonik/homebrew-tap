class Underblog < Formula
  desc "Extremely simple static blog generator "
  homepage "https://github.com/freetonik/underblog"
  url "https://github.com/freetonik/underblog/releases/download/v0.2.2/underblog-darwin-amd64-v0.2.2.tar.gz"
  sha256 "d727d2fa880670f959f5f09b54856404a17553e6a089ff0a06ae889d0aec679e"

  bottle :unneeded

  def install
    bin.install "underblog"
  end

  test do
    system "#{bin}/underblog", "--version"
  end
end
