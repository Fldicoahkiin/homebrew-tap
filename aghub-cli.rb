class AghubCli < Formula
  desc "AI coding agent configuration management tool (CLI)"
  homepage "https://github.com/AkaraChen/aghub"
  version "1.9.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-aarch64-apple-darwin.tar.gz"
      sha256 "ff88a40e0ceba8c631fa1543c23cf8aafb1e52ec08b742b9da97988d31fbed19"
    else
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-x86_64-apple-darwin.tar.gz"
      sha256 "ba14bb937578974331fecef57bdc1ba06cc8584deeb31bbfcbc81e65a2c49034"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15099b3cd32c2f2d8903e606bf95988770cfdd74154879c0b24e618372ab1ac3"
    end
  end

  def install
    bin.install "aghub-cli"
  end

  test do
    system "#{bin}/aghub-cli", "--version"
  end
end
