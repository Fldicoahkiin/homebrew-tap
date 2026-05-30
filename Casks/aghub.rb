cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "97ab5056442135ccf7ed8ad4b86132702c0394d9b18518c8fc33ecdf0f728f50",
         intel: "f916cc0a55ce2bf4e2bf229c0e6ac0b0525c332322f25e001b33d70c81ad3f8e"

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
