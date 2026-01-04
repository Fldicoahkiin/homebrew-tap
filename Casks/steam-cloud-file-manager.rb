cask "steam-cloud-file-manager" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.9.6"
  sha256 arm:   "0e8586695110fe9c4239a9595745f5c9e85f740b699b3ca681e1a4139a75c500",
         intel: "00effd6d50c853441119681e896615b4768d1c62274ca3d4fc1989cdc0dde902"

  url "https://github.com/Fldicoahkiin/SteamCloudFileManager/releases/download/v#{version}/SteamCloudFileManager-#{version}-macos-#{arch}.dmg"
  name "Steam Cloud File Manager"
  desc "Steam云文件管理器"
  homepage "https://github.com/Fldicoahkiin/SteamCloudFileManager"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Steam Cloud File Manager.app"

  zap trash: [
    "~/Library/Application Support/com.flacier.steamcloudfilemanager",
    "~/Library/Saved Application State/com.flacier.steamcloudfilemanager.savedState",
  ]
end
