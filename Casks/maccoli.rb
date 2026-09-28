cask "maccoli" do
  version "0.7.0"
  sha256 "62d63964c1cb2eb6abe8005e6d7dd612b36f2647b7400c61a20698ca2c52f8b5"

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
