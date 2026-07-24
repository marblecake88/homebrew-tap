cask "claude-limits-gachi-soundboard" do
  version "1.3"
  sha256 "03d58dd8ff1110fe0903f42e650d2acca04bb5eccaa6b653ba51a62b36277eba"

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
