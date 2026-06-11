cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "06f1ea29de38bbdb546a88fcf44ed5d104e2e13c3cb142d0d0828981dfbba253",
         intel: "a00d7c78bb3515e763de134b2fe3030b6b85a3ef7b5422341b58e76f38dc926f"

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
