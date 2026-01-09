cask "steam-cloud-file-manager" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "7f9dc26a41daf028f98da7d4c5c4bc9a6dd2846ab06e793a2b6f3c33a977b1cd",
         intel: "025d206a079204d05b4b4960d2624394cbdec69d1af8c8cdf0231cf493c61f02"

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
