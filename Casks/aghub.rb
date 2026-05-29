cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "735c3465e2b0da41990aa2b15715ceea31a184f3cbf9b64fed10c9bfe13702c1",
         intel: "f59fd51f472a18a462ff44709a38bd9afb03180bf5a0b18bf6ab093eff76d8e6"

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
