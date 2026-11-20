cask("steam-cloud-file-manager") do
	arch(arm: "aarch64", intel: "x86_64")

	version("1.3.8")
	sha256(
		arm: "d2c4d600c4e26e1a0a7c0190d53c85707d7f34cc7b33ef755fd551949f5bccc9",
		intel: "3d1362155d18f8f3ba916903bb9bbd28d1c9aea325167e315faeb09c845d61db"
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
