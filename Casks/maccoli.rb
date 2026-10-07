cask "maccoli" do
  version "0.7.6"
  sha256 "500ba9c41649d1ea9fc0acbe9367c2dd40f5653c98a190e3b21212fc1b1aa450"

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
