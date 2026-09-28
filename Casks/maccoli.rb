cask "maccoli" do
  version "0.7.2"
  sha256 "cd9b99035d2b7ba170ff3613cc831f557de584d10a090572a207f6aeef2e30c0"

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
