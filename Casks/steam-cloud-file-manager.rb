cask "steam-cloud-file-manager" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "5e2b3ce61ba29c42c935cf79db651b26b5ba60ac949346e35ff36fd235255578",
         intel: "9b9b0284ecb0166d263312b67e7d38c07a55599f70861ec3350ee8a679974090"

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
