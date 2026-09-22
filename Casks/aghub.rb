cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.1"
  sha256 arm:   "9ac6b5f97137da47445ba99f51cbd04be2d96caaa45d36560aaa337bf473bacd",
         intel: "dc417248c1ae2e2d22df7e25e40681c9a9368de90f41ae30d2b1ac7cc70246f1"

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
