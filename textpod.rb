class Textpod < Formula
  desc "Local, web-based notetaking app inspired by 'One Big Text File'."
  homepage "https://github.com/freetonik/textpod"
  version "0.1.7"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/freetonik/textpod/releases/download/0.1.8/textpod-macos-x86_64.tar.gz"
      sha256 "850f17f64e2643fe99ad55555670a4cdd00e28d3c8b6e75f3bb46b2243e87a68"
    else
      url "https://github.com/freetonik/textpod/releases/download/0.1.8/textpod-macos-aarch64.tar.gz"
      sha256 "7e62ca8bea785ba469401fc898d86d67fe9cd982c3badbffb1cd04d20b55272a"
    end
  end

  def install
    bin.install "textpod"
  end

  test do
    system "#{bin}/textpod", "--version"
  end
end
