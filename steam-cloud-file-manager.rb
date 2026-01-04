# Steam Cloud File Manager Homebrew Formula 模板
# 此文件由 CI 用于生成实际的 Formula

class SteamCloudFileManager < Formula
  desc "Steam云文件管理器 - Steam Cloud File Manager"
  homepage "https://github.com/Fldicoahkiin/SteamCloudFileManager"
  version "0.9.6"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fldicoahkiin/SteamCloudFileManager/releases/download/v0.9.6/SteamCloudFileManager-0.9.6-macos-aarch64.tar.gz"
      sha256 "29035e83db3ebf343fde5de6b52ac10277d6974dc5da161fa355500c465bf481"
    else
      url "https://github.com/Fldicoahkiin/SteamCloudFileManager/releases/download/v0.9.6/SteamCloudFileManager-0.9.6-macos-x86_64.tar.gz"
      sha256 "38c80a416163aa9d72319cf91c12b1f4ecea97b9dd58adcf42f5b98e213b7622"
    end
  end

  def install
    app_name = "Steam Cloud File Manager.app"

    if File.exist?("Contents/Info.plist")
      (prefix/app_name).install Dir["*"]
    else
      app_path = Dir.glob("**/*.app").first
      raise "No .app bundle found" unless app_path

      app_name = File.basename(app_path)
      prefix.install app_path
    end
    
    # 在 bin/ 目录创建启动脚本
    (bin/"steam-cloud-file-manager").write <<~EOS
      #!/bin/bash
      open "#{prefix}/#{app_name}" --args "$@"
    EOS
  end

  def caveats
    <<~EOS
      Steam Cloud File Manager 已安装完成。
      
      从终端运行：
        steam-cloud-file-manager
      
      或在 Finder 中打开：
        open "#{prefix}/Steam Cloud File Manager.app"
    EOS
  end

  test do
    system "#{bin}/steam-cloud-file-manager", "--version"
  end
end
