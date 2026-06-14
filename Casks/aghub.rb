cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0-1"
  sha256 arm:   "6f0119fb96e20984c4a921eaca2ec02246224ed4c9b46355e619fc98fed2ad4b",
         intel: "e91424851bccc1e5b7cc2bde42a2ec39d8c428c497af6535cc7df0334ec1591b"

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
