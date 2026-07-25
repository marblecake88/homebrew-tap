cask "claude-limits-gachi-soundboard" do
  version "1.4"
  sha256 "b69a3d895d0caac5d792ee8dfaac87b2c34792f06e3928448b2be1cad9fc5a87"

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
