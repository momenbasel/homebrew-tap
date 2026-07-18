cask "consolemini" do
  version "0.1.3"

  on_arm do
    sha256 "2d5126897a0e761c4050737fece4ef25b5ab9d69a97e961718a960a27fc489df"

    url "https://github.com/momenbasel/ConsoleMini/releases/download/v#{version}/ConsoleMini-#{version}-arm64-mac.zip"
  end
  on_intel do
    sha256 "0c439b3ec606a7cc0355ac4a751b1b2fb452c569b12857d94f6917946b861675"

    url "https://github.com/momenbasel/ConsoleMini/releases/download/v#{version}/ConsoleMini-#{version}-mac.zip"
  end

  name "ConsoleMini"
  desc "Living-room retro and PlayStation console launcher"
  homepage "https://github.com/momenbasel/ConsoleMini"

  depends_on macos: :big_sur

  app "ConsoleMini.app"

  zap trash: [
    "~/Library/Application Support/console-mini",
    "~/Library/Application Support/ConsoleMini",
    "~/Library/Caches/io.consolemini.app",
    "~/Library/Logs/ConsoleMini",
    "~/Library/Preferences/io.consolemini.app.plist",
    "~/Library/Saved Application State/io.consolemini.app.savedState",
  ]
end
