cask "puremac" do
  version "1.0.1"
  sha256 "0e5e1c489dfe01f9974e3942cc5b80ac49e539d4e195e23c79c8e5106a4c11e7"

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
