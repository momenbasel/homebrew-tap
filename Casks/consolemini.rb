cask "consolemini" do
  version "0.1.0"

  on_arm do
    sha256 "84c806ce43c9071f56fe0b0ca836fa006b77b667d391545ceea8825c4ec174c0"

    url "https://github.com/momenbasel/ConsoleMini/releases/download/v#{version}/ConsoleMini-#{version}-arm64-mac.zip"
  end
  on_intel do
    sha256 "e1f04e1f7f55279f925c0e1fd073320f8ab05b29fe25d77aa541cede61b33bcc"

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
