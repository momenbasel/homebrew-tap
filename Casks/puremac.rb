cask "puremac" do
  version "2.5.1"
  sha256 "08fee39a985cd47c5be4c7bc406d26fca4a7c5d9dc95c93e447d4bb6106dca68"

  url "https://github.com/momenbasel/PureMac/releases/download/v#{version}/PureMac-#{version}.zip"
  name "PureMac"
  desc "Open-source application manager and system cleaner"
  homepage "https://github.com/momenbasel/PureMac"

  depends_on macos: ">= :ventura"

  app "PureMac.app"

  zap trash: [
    "~/Library/Caches/com.puremac.app",
    "~/Library/LaunchAgents/com.puremac.scheduler.plist",
    "~/Library/Preferences/com.puremac.app.plist",
  ]
end
