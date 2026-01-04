cask "steam-cloud-file-manager" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.9.6"
  sha256 arm:   "44dbcf302849dce64e787c3a9ed757231eba564c36c54802084aa72f862fa8fe",
         intel: "944ef4063d2479d3b70d64357b418f8dc2eb6ee9ec212b381c6208f425351b71"

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
