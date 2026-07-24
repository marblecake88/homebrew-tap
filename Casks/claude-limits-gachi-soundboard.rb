cask "claude-limits-gachi-soundboard" do
  version "1.3.1"
  sha256 "b51281584411fc4fe5ff71d2815306bd59be4b0c4985d864d86c39d0a1203c70"

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
