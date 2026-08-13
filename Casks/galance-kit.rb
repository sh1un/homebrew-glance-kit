cask "galance-kit" do
  version "0.4.0"
  sha256 "551e842492852d411fc333415b1bf3bbad9d60bca64bee30c31da50f7a7beb15"

  url "https://github.com/sh1un/homebrew-glance-kit/releases/download/v#{version}/GalanceKit-#{version}.zip"
  name "GalanceKit"
  desc "Grafana panels and top traffic metrics in the macOS menu bar"
  homepage "https://github.com/sh1un/homebrew-glance-kit"

  depends_on macos: :sonoma

  app "GlanceKit.app"

  zap trash: [
    "~/Library/Application Scripts/dev.shiun.glancekit",
    "~/Library/Application Scripts/dev.shiun.glancekit.widget",
    "~/Library/Application Scripts/group.dev.shiun.glancekit",
    "~/Library/Containers/dev.shiun.glancekit",
    "~/Library/Containers/dev.shiun.glancekit.widget",
    "~/Library/Group Containers/group.dev.shiun.glancekit",
    "~/Library/Preferences/dev.shiun.glancekit.plist",
    "~/Library/WebKit/dev.shiun.glancekit",
  ]
end
