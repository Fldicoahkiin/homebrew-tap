cask("steam-cloud-file-manager") do
	arch(arm: "aarch64", intel: "x86_64")

	version("1.3.7")
	sha256(
		arm: "cd968c11341c9f357c041bcb0ea04375f26d434e1a312ee3b05146659116c1e9",
		intel: "e3a567dde8fe05dd2805a9d2bf79a0cbacaca7ea02dcf7951d81b26c3760c3d4"
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
