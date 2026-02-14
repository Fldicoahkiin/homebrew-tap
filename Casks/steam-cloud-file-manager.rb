cask "steam-cloud-file-manager" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.3.2"
  sha256 arm:   "2c7f3db1ae4312d3f3f0db4203c1456aaa973cc13d2c2436f65c568cee0ec997",
         intel: "99b68f07a20ee20516e67a621e59a8d11dd9943c83e19261ea878512c9ad91b5"

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
