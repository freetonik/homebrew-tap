class Textpod < Formula
  desc "Local, web-based notetaking app inspired by 'One Big Text File'."
  homepage "https://github.com/freetonik/textpod"
  version "0.0.2"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Codexpanse/textpod-citest/releases/download/0.14/textpod-macos-x86_64.tar.gz"
      sha256 "eae5fd6dff55cffa45d28f36ad311c7fc6346527dfd0d998c0c48c9b75628bf4"
    else
      url "https://github.com/Codexpanse/textpod-citest/releases/download/0.14/textpod-macos-aarch64.tar.gz"
      sha256 "498b26493f47c1d0faa4c21161655919ff4d9fe2c9d6424df1f6235c6fbdc6f3"
    end
  end

  def install
    bin.install "textpod"
  end

  test do
    system "#{bin}/textpod", "--version"
  end
end
