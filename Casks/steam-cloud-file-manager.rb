cask("steam-cloud-file-manager") do
	arch(arm: "aarch64", intel: "x86_64")

	version("1.3.9")
	sha256(
		arm: "31a4273880aee6414ee3ef1bea405caf576c7778dd490de176e600ece870c1e6",
		intel: "9a8c50188dc056885d72a969bea790c8e32d2fcf662e92d7c83fd76bbb107fe2"
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
