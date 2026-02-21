cask "steam-cloud-file-manager" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.3.3"
  sha256 arm:   "6b4cf40612d5572d081b12796f924d8478bc4d8a358f6e9e496e8f5bbd9eb40c",
         intel: "4197e93c58a6c775d8a86264989ece0f9b7831f6264f36b97050b20fcc666c21"

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

  caveats <<~EOS
    如果应用提示"已损坏"或无法打开，请在终端运行以下命令修复：
      xattr -cr "/Applications/Steam Cloud File Manager.app"
  EOS
end
