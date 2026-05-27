cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "2916bb46eb2dc0abd1aae3e7c664f7daf33ac6fb1d86d1ddb6824a02cd42f2c1",
         intel: "ef2ad74549cc700eb7092da173bd1d20ed1cb73698d0e4375f92001ad47f3827"

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
