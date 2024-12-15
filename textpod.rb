class Textpod < Formula
  desc "Local, web-based notetaking app inspired by 'One Big Text File'."
  homepage "https://github.com/freetonik/textpod"
  version "0.1.3"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/freetonik/textpod/releases/download/0.1.4/textpod-macos-x86_64.tar.gz"
      sha256 "bdb9e57fae0aadd11c423fe9ac1a3fcd4e5e12a1da757b3d96d7be541920b67f"
    else
      url "https://github.com/freetonik/textpod/releases/download/0.1.4/textpod-macos-aarch64.tar.gz"
      sha256 "c569a2cacc8e31e4a4f47cb4c48c50761e8ebc151b980cbb31bf0d4a1953864e"
    end
  end

  def install
    bin.install "textpod"
  end

  test do
    system "#{bin}/textpod", "--version"
  end
end
