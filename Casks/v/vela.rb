cask "vela" do
  version "0.3.0"
  sha256 "9f4017087b8cbe4d08d6af3af564d2fe650b12c8dcfb4ec72b573001210caf3c"

  url "https://github.com/tubasasakunn/vela/releases/download/v#{version}/Vela-#{version}.dmg"
  name "Vela"
  desc "File-configured launcher, clipboard, hotkey, and window utility"
  homepage "https://github.com/tubasasakunn/vela"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Vela.app"
  binary "#{appdir}/Vela.app/Contents/Helpers/vela"

  uninstall quit: "dev.vela.app"

  zap trash: [
    "~/.config/vela",
    "~/Library/Application Support/Vela",
  ]
end
