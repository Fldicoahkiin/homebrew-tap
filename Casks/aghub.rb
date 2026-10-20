cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.2"
  sha256 arm:   "025980b955d0949434e59196889784d043356a6572336d94c71b37c52b878406",
         intel: "5f1b982b0e06192a7aae6dca6903c86e38d4420ed83a9db7c508ff73420ac64a"

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
