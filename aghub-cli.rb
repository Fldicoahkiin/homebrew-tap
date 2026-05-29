class AghubCli < Formula
  desc "AI coding agent configuration management tool (CLI)"
  homepage "https://github.com/AkaraChen/aghub"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-aarch64-apple-darwin.tar.gz"
      sha256 "77bf9486e073df079cec8ea329352456772d6300e2bb023c123ef9bd6e4bd225"
    else
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-x86_64-apple-darwin.tar.gz"
      sha256 "0df21d965ed36bdd0045922ee2db3edb6a7944b3f0f3af2ea090a17cf16ee711"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a912fc38daed61d6e261cf88b6068d088a51df6715b1ac409a0e4e0c3d267c0"
    end
  end

  def install
    bin.install "aghub-cli"
  end

  test do
    system "#{bin}/aghub-cli", "--version"
  end
end
