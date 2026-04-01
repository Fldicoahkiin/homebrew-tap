cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "f5d7f0a5cf8563080d0ad68d3fa528d9d350840cb11630f702f9938952b1147f",
         intel: "ac87d6c433f3ff675e53b985554d352601e376c2a90afec6addc7e77796b179d"

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
