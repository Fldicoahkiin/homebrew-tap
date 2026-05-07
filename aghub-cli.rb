class AghubCli < Formula
  desc "AI coding agent configuration management tool (CLI)"
  homepage "https://github.com/AkaraChen/aghub"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-aarch64-apple-darwin.tar.gz"
      sha256 "568df9dd630f11bd543cab481df6559ae797df6ce90cc8cee1800bd3004bf1fe"
    else
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-x86_64-apple-darwin.tar.gz"
      sha256 "40d72ae7fad0f1b30931137e2cb1bce6c39835b9f05c9f86be0af74d13907538"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7fd928622da862863f87045cfc6dfed90efc6e919728de4294a052ec48b48a39"
    end
  end

  def install
    bin.install "aghub-cli"
  end

  test do
    system "#{bin}/aghub-cli", "--version"
  end
end
