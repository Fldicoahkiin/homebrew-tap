class AghubCli < Formula
  desc "AI coding agent configuration management tool (CLI)"
  homepage "https://github.com/AkaraChen/aghub"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-aarch64-apple-darwin.tar.gz"
      sha256 "19b533621aa58341fe2a5da2e294bef05b5573f0183423fbf0ac4e227263c164"
    else
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-x86_64-apple-darwin.tar.gz"
      sha256 "d9e86258b2e1a336e29952244a90f57f1163ecec865f1e0c8c3f9fb8bde6c541"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2931cc70d04df89dc26f28421cb388465f43cac1578d3f2761bdae38a4c6d1b3"
    end
  end

  def install
    bin.install "aghub-cli"
  end

  test do
    system "#{bin}/aghub-cli", "--version"
  end
end
