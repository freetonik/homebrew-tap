class Textpod < Formula
  desc "Local, web-based notetaking app inspired by 'One Big Text File'."
  homepage "https://github.com/freetonik/textpod"
  version "0.1.3"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/freetonik/textpod/releases/download/0.1.3/textpod-macos-x86_64.tar.gz"
      sha256 "c1a0df19153fa2de63da80fdaf10b83630de3a86612ca65aa4e638c63290ec65"
    else
      url "https://github.com/freetonik/textpod/releases/download/0.1.3/textpod-macos-aarch64.tar.gz"
      sha256 "b5eec257bfb15c59caff4aa0e41b5a5fb3d9608fdb891cb26ca12eeda7cff314"
    end
  end

  def install
    bin.install "textpod"
  end

  test do
    system "#{bin}/textpod", "--version"
  end
end
