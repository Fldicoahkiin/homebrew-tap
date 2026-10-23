cask("steam-cloud-file-manager") do
	arch(arm: "aarch64", intel: "x86_64")

	version("1.3.6")
	sha256(
		arm: "5123190461cf0632d410248aeb8e2e30e66b7aecd93afec68186d11d705590bc",
		intel: "43d6400267d1f76e1ad69d841eaa69f2cf015e3369f345396f3b1f797c709008"
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
