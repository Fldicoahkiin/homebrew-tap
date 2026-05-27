cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "a855bfa7d6647b25c39e9b15c96d5b3c29c7282d39162e3555bd1d6ca9eb7fc5",
         intel: "a53809518b31bd2e28c4f53a38951470cf521fa1dd17d4ccd67079fc73573f39"

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
