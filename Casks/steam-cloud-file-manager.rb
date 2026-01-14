cask "steam-cloud-file-manager" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.2"
  sha256 arm:   "286d274d2ff0a2671dbd05872d6f262f86adce4a36eb0902aa22c61c0e79c427",
         intel: "31cf0d96e069617e754576c2b70430691468929c6ca25066be97ed94e0788ccc"

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
