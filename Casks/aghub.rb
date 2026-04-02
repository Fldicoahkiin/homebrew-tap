cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "74824beafb5ffe23404f1c7de70a0e7101370b830f38dc477a93e2ef3ffe07a3",
         intel: "885c3975d9fc02cbbb693ed31a667826d8eb18f6dc14f4d96f12ec484351f5ee"

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
