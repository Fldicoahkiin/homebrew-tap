cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.0-beta.1"
  sha256 arm:   "b488a455908e032e1a5ffed9deb5a997f80c79919b15e4592886cc7b3bb168ae",
         intel: "c862f2005ee6a5dffde77c39ba9d74675aebaf21457b198fc187c019cb1438a3"

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
