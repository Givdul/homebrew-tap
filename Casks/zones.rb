cask "zones" do
  version "1.1,2"
  sha256 "3b24554432c327d57eaa56a108b299d34d71f4dacbc48936fb1621e880d466c6"

  url "https://apps.givdul.com/zones/updates/Zones-#{version.csv.first}-#{version.csv.second}.zip"
  name "Zones"
  desc "Window manager with custom zones you drop windows into"
  homepage "https://apps.givdul.com/zones"

  livecheck do
    url "https://apps.givdul.com/zones/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Zones.app"

  zap trash: [
    "~/Library/Caches/com.ludvighansen.zones",
    "~/Library/HTTPStorages/com.ludvighansen.zones",
    "~/Library/Preferences/com.ludvighansen.zones.plist",
    "~/Library/WebKit/com.ludvighansen.zones",
  ]
end
