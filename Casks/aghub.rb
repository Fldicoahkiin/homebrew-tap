cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.4"
  sha256 arm:   "1d356b0c2e3899a0316b86695c3c723b1105943a65e1e376d99fd67f7174a90a",
         intel: "6b96a02bffbe713e2df4c25d0f690a76b6013dede9bd368e781bcbeb0e6d6887"

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
