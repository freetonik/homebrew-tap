class Underblog < Formula
  desc "Extremely simple static blog generator "
  homepage "https://github.com/freetonik/underblog"
  url "https://github.com/freetonik/underblog/releases/download/v0.2.2/underblog-darwin-amd64-v0.2.2.tar.gz"
  sha256 "4ef085dc3d93c73b27a25ae52e25c4c0e1e115e1d546456599e55d8ba77d5dfa"

  bottle :unneeded

  def install
    bin.install "underblog"
  end

  test do
    system "#{bin}/underblog", "--version"
  end
end
