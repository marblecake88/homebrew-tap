cask "claude-limits-gachi-soundboard" do
  version "1.5"
  sha256 "03debb32158d9d56c7f4d83f9452982ba4d26a4d397217afb1531c92adc8be4b"

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
