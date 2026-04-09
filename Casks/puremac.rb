cask "puremac" do
  version "1.0.1"
  sha256 "d755dedab3b3f87676da797b857dd35e1fd43bec6f5ba342585fe787be41135d"

  url "https://github.com/momenbasel/PureMac/releases/download/v#{version}/PureMac-v#{version}.zip"
  name "PureMac"
  desc "Free, open-source macOS cleaning utility"
  homepage "https://github.com/momenbasel/PureMac"

  app "PureMac.app"

  zap trash: [
    "~/Library/Preferences/com.puremac.app.plist",
    "~/Library/Caches/com.puremac.app",
    "~/Library/LaunchAgents/com.puremac.scheduler.plist",
  ]
end
