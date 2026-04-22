cask "consolemini" do
  version "0.1.1"

  on_arm do
    sha256 "96d5030ca4931ca23a51a089bbc4c56df2da64c58cacfe72b53deb784d93a3a2"

    url "https://github.com/momenbasel/ConsoleMini/releases/download/v#{version}/ConsoleMini-#{version}-arm64-mac.zip"
  end
  on_intel do
    sha256 "08c0e4f06d8f727df98e12f7aa45159965b877f96a710981390610d0ddad6648"

    url "https://github.com/momenbasel/ConsoleMini/releases/download/v#{version}/ConsoleMini-#{version}-mac.zip"
  end

  name "ConsoleMini"
  desc "Living-room retro and PlayStation console launcher"
  homepage "https://github.com/momenbasel/ConsoleMini"

  depends_on macos: ">= :big_sur"

  app "ConsoleMini.app"

  zap trash: [
    "~/Library/Application Support/ConsoleMini",
    "~/Library/Caches/io.consolemini.app",
    "~/Library/Logs/ConsoleMini",
    "~/Library/Preferences/io.consolemini.app.plist",
    "~/Library/Saved Application State/io.consolemini.app.savedState",
  ]
end
