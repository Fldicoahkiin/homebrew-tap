class Agentctl < Formula
  desc "AI coding agent configuration management tool CLI"
  homepage "https://github.com/AkaraChen/aghub"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/agentctl-aarch64-apple-darwin.tar.gz"
      sha256 "024d78956048ed6533ff90fece884134a2fc6d2c4340d0e9957e981f7c757e4e"
    else
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/agentctl-x86_64-apple-darwin.tar.gz"
      sha256 "b28fc299acce3921054e4017ef31048f5ef5ca5081430a3e733c0ec0949068b7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/agentctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fdb35fdd4acd16ba4169ee6b097fa858a5238eae61d42f8daabbe7cf69fdc20"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    system "#{bin}/agentctl", "--version"
  end
end
