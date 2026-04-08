cask "puremac" do
  version "1.0.0"
  sha256 "789575c476e2ae60c647936944b7ddfbbb4f16ebb3dc26f0ccba3f3e7e03d572"

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
