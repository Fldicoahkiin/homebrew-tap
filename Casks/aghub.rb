cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "99cafccf55b0c8b0440caac27fa45eb6e59be04fd5ab76cfbfd1afc851d791d0",
         intel: "e6e8eceed7043622420a138569de1b51ddbd288c392e45fbb472e0f69dac0f62"

  url "https://github.com/AkaraChen/aghub/releases/download/v#{version}/aghub_#{version}_#{arch}.dmg"
  name "aghub"
  desc "AI coding agent configuration management tool"
  homepage "https://github.com/AkaraChen/aghub"

  app "aghub.app"

  zap trash: [
    "~/Library/Application Support/com.akrc.aghub",
    "~/Library/Preferences/com.akrc.aghub.plist",
    "~/Library/Saved Application State/com.akrc.aghub.savedState"
  ]
end
