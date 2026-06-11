cask("steam-cloud-file-manager") do
	arch(arm: "aarch64", intel: "x86_64")

	version("1.3.5")
	sha256(
		arm: "ecd04d998b38281dedb170ffc9649d5ac85e0fdea439db34e827b3e141b05a93",
		intel: "e1be3ea3c12070a90ac045db4b242917afdda62f43a6ffb04ea3b4ad5c4cfc97"
	)

	url(
		"https://github.com/Fldicoahkiin/SteamCloudFileManager/releases/download/v#{version}/SteamCloudFileManager-#{version}-macos-#{arch}.dmg"
	)
	name("Steam Cloud File Manager")
	desc("Steam云文件管理器")
	homepage("https://github.com/Fldicoahkiin/SteamCloudFileManager")

	livecheck do
		url(:url)
		strategy(:github_latest)
	end

	app("Steam Cloud File Manager.app")

	zap(
		trash: [
			"~/Library/Application Support/com.flacier.steamcloudfilemanager",
			"~/Library/Saved Application State/com.flacier.steamcloudfilemanager.savedState"
		]
	)

	caveats(
		<<~EOS
				如果应用提示"已损坏"或无法打开，请在终端运行以下命令修复：
				  xattr -cr "/Applications/Steam Cloud File Manager.app"
		EOS
	)
end
