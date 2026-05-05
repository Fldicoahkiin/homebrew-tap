class AghubCli < Formula
  desc "AI coding agent configuration management tool (CLI)"
  homepage "https://github.com/AkaraChen/aghub"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-aarch64-apple-darwin.tar.gz"
      sha256 "bae1cd6a7a6e907d3a21c082433f5a1ee713ef0fae0f10fdeb41bfe921ed067c"
    else
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-x86_64-apple-darwin.tar.gz"
      sha256 "8b3c05522433f520b0804d4d04b7ca6eed92b26f987e9c0ca20817251e3407b0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d0526d96b6f1dda73fff57de3309098cb384710a3896ffe78052fcd4cba925e"
    end
  end

  def install
    bin.install "aghub-cli"
  end

  test do
    system "#{bin}/aghub-cli", "--version"
  end
end
