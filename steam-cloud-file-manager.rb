# Steam Cloud File Manager Homebrew Formula 模板
# 此文件由 CI 用于生成实际的 Formula

class SteamCloudFileManager < Formula
	desc "Steam云文件管理器 - Steam Cloud File Manager"
	homepage "https://github.com/Fldicoahkiin/SteamCloudFileManager"
	version "1.3.7"
	license "GPL-3.0"

	on_macos do
		if Hardware::CPU.arm?
			url(
				"https://github.com/Fldicoahkiin/SteamCloudFileManager/releases/download/v1.3.7/SteamCloudFileManager-1.3.7-macos-aarch64.tar.gz"
			)
			sha256 "29dec2c3010e65941ba45d775a37a3b202f3b028a02a07c7d6e125b25340bbdd"
		else
			url(
				"https://github.com/Fldicoahkiin/SteamCloudFileManager/releases/download/v1.3.7/SteamCloudFileManager-1.3.7-macos-x86_64.tar.gz"
			)
			sha256 "6e61bad6c8653cf8970bd02c3129d7359e0de549cbc033ce4edb6317a692fa48"
		end
	end

	def install
		app_name = "Steam Cloud File Manager.app"

		if File.exist?("Contents/Info.plist")
			(prefix / app_name).install(Dir["*"])
		else
			app_path = Dir.glob("**/*.app").first
			raise "No .app bundle found" unless app_path

			app_name = File.basename(app_path)
			prefix.install(app_path)
		end

		# 在 bin/ 目录创建启动脚本
		(bin / "steam-cloud-file-manager").write(
			<<~EOS
					#!/bin/bash
					open "#{prefix}/#{app_name}" --args "$@"
			EOS
		)
	end

	def caveats
		<<~EOS
				Steam Cloud File Manager 已安装。

				📱 **将应用添加到“应用程序”文件夹**（推荐）：
				  ln -s "#{prefix}/Steam Cloud File Manager.app" /Applications/

				🖥️ **从终端运行**：
				  steam-cloud-file-manager
		EOS
	end

	test do
		system "#{bin}/steam-cloud-file-manager", "--version"
	end
end
