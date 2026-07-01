cask "maccoli" do
  version "0.5.0"
  sha256 "75e3b6840489464e6dfc129808f5653b68c9fe834967a8b38469553c1ac7737f"

  url "https://github.com/Jun-Jin/MacColi/releases/download/v#{version}/MacColi-#{version}.dmg",
      verified: "github.com/Jun-Jin/MacColi/"
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
