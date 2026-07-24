cask "claude-limits-gachi-soundboard" do
  version "1.2.2"
  sha256 "2f52f57a96ef2f9783fee51dfa236f4ccafc6c0f2197be27bff8c886ecf05c26"

  url "https://github.com/marblecake88/claude-limits-gachi-soundboard/releases/download/v#{version}/LimitNotifier.zip"
  name "Claude Limits Gachi Soundboard"
  desc "Claude Code usage limits in the menu bar, plus a gachi soundboard"
  homepage "https://github.com/marblecake88/claude-limits-gachi-soundboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "LimitNotifier.app"

  zap trash: [
    "~/Library/Application Support/LimitNotifier",
    "~/Library/Logs/limitnotifier.log",
    "~/Library/Preferences/com.koteng.limitnotifier.plist",
  ]
end
