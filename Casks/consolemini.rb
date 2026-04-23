cask "consolemini" do
  version "0.1.2"

  on_arm do
    sha256 "d9e2581dcc8169d9c10efa367ffbc2327219b33e1e0e7cc47ac2392887115274"

    url "https://github.com/momenbasel/ConsoleMini/releases/download/v#{version}/ConsoleMini-#{version}-arm64-mac.zip"
  end
  on_intel do
    sha256 "334738d5cb7d0c3d69551404756c3905d6b5d86df612f663cccf5aac28ce52f8"

    url "https://github.com/momenbasel/ConsoleMini/releases/download/v#{version}/ConsoleMini-#{version}-mac.zip"
  end

  name "ConsoleMini"
  desc "Living-room retro and PlayStation console launcher"
  homepage "https://github.com/momenbasel/ConsoleMini"

  depends_on macos: ">= :big_sur"

  app "ConsoleMini.app"

  zap trash: [
    "~/Library/Application Support/ConsoleMini",
    "~/Library/Application Support/console-mini",
    "~/Library/Caches/io.consolemini.app",
    "~/Library/Logs/ConsoleMini",
    "~/Library/Preferences/io.consolemini.app.plist",
    "~/Library/Saved Application State/io.consolemini.app.savedState",
  ]
end
