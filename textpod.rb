class Textpod < Formula
  desc "Local, web-based notetaking app inspired by 'One Big Text File'."
  homepage "https://github.com/freetonik/textpod"
  version "0.1.2"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/freetonik/textpod/releases/download/0.1.2/textpod-macos-x86_64.tar.gz"
      sha256 "238e84cbb853c60b7dbac499628c7b6ea434e96fe21a31e34702f4900a819312"
    else
      url "https://github.com/freetonik/textpod/releases/download/0.1.2/textpod-macos-aarch64.tar.gz"
      sha256 "b7d80598791c236cdf5d0791da77e5ca2c2e9f8c7cb896c3bf74b68a1ddd1d94"
    end
  end

  def install
    bin.install "textpod"
  end

  test do
    system "#{bin}/textpod", "--version"
  end
end
