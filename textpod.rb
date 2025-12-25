class Textpod < Formula
  desc "Local, web-based notetaking app inspired by 'One Big Text File'."
  homepage "https://github.com/freetonik/textpod"
  version "0.1.7"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/freetonik/textpod/releases/download/0.1.7/textpod-macos-x86_64.tar.gz"
      sha256 "75a35256a39ae4df9a87deecafa7a670a7e97fd6cea656db91ad6fcb3b4dfc92"
    else
      url "https://github.com/freetonik/textpod/releases/download/0.1.7/textpod-macos-aarch64.tar.gz"
      sha256 "324212e1fb5ff2ffb6b56d4fdd8b2c8c504ca1b5886634fbb043c7235770ca58"
    end
  end

  def install
    bin.install "textpod"
  end

  test do
    system "#{bin}/textpod", "--version"
  end
end
