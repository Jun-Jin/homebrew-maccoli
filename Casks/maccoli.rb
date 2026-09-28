cask "maccoli" do
  version "0.7.1"
  sha256 "a268842c9e1df86f44d51f42699b4225d184961e2d6681ebd31205b712159ba4"

  url "https://github.com/Jun-Jin/MacColi/releases/download/v#{version}/MacColi-#{version}.dmg"
  name "MacColi"
  desc "Native macOS desktop app for managing Colima container VMs"
  homepage "https://github.com/Jun-Jin/MacColi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MacColi.app"

  zap trash: [
    "~/Library/Application Support/com.maccoli.MacColi",
    "~/Library/Caches/com.maccoli.MacColi",
    "~/Library/HTTPStorages/com.maccoli.MacColi",
    "~/Library/Preferences/com.maccoli.MacColi.plist",
    "~/Library/Saved Application State/com.maccoli.MacColi.savedState",
  ]
end
