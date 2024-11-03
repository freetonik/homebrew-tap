class Textpod < Formula
  desc "Local, web-based notetaking app inspired by 'One Big Text File'."
  homepage "https://github.com/freetonik/textpod"
  version "0.1.2"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/freetonik/textpod/releases/download/0.1.2/textpod-macos-x86_64.tar.gz"
      sha256 "8f7336760f5bd42243ea9cc75afc15e157f318d5ab6dcf016d37d8c9ecc5065a"
    else
      url "https://github.com/freetonik/textpod/releases/download/0.1.2/textpod-macos-aarch64.tar.gz"
      sha256 "44f8d9c7f3ff1a90463d394ab68bd14fdd434536f451023ed679198b828ce2ee"
    end
  end

  def install
    bin.install "textpod"
  end

  test do
    system "#{bin}/textpod", "--version"
  end
end
