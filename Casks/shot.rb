cask "shot" do
  version "1.0,1"
  sha256 "266d6fa0bf6519ba1e7009c8a14a54eb746bcfd976b5b4253db4ade4803083ee"

  url "https://apps.givdul.com/shot/updates/Shot-#{version.csv.first}-#{version.csv.second}.zip"
  name "Shot"
  desc "Screenshot tool with Freeze Screen, scrolling capture, and text capture"
  homepage "https://apps.givdul.com/shot"

  livecheck do
    url "https://apps.givdul.com/shot/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Shot.app"

  zap trash: "~/Library/Containers/dev.ludvigh.shot"
end
