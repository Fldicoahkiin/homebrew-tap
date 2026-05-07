cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "27cc1d3c1dd4fc7f5ad12e611b0fe3ede69fd6487b724a6c0cd752f477773158",
         intel: "c2dd6513f2d15bf3e13746d35be08b00e23c1a0569067525dad311a128863cb8"

  url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub_#{version}_#{arch}.dmg"
  name "aghub"
  desc "AI coding agent configuration management tool (Desktop App)"
  homepage "https://github.com/AkaraChen/aghub"

  app "aghub.app"

  zap trash: [
    "~/Library/Application Support/com.akrc.aghub",
    "~/Library/Preferences/com.akrc.aghub.plist",
    "~/Library/Saved Application State/com.akrc.aghub.savedState"
  ]
end
