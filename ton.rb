class Ton < Formula
  desc "A collection of The Open Network core software and utilities."
  homepage "http://github.com/ton-blockchain/ton"

  if Hardware::CPU.arm?
    url "https://github.com/neodiX42/homebrew-ton/releases/download/v2023.05/ton-brew-arm64.tar.gz"
    sha256 "f061a43f1e509288ca7fcab93c714c8a7d95b11ef40769b41f58e581868b8fab"
#    head "https://github.com/neodiX42/ton/releases/latest/download/ton-arm64.tar.gz"
  else
    url "https://github.com/neodiX42/homebrew-ton/releases/download/v2023.05/ton-brew-x86-64.tar.gz"
    sha256 "0077df229cb39d22e5e8900166a8c64ff80e914a5fff2540ddbe982f47f7feb7"
#    head "https://github.com/ton-blockchain/ton/releases/download/v2023.04/ton-mac-x86-64.zip"
  end
  license "LGPL-2.0-only"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end
end
