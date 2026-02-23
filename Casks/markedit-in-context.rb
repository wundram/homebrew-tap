cask "markedit-in-context" do
  version "0.1.0"
  sha256 "b973bb4353cec9f3e2ca8ebcb3f24bcecfb222eb31a7e963b731cb858cecaceb"

  url "https://github.com/wundram/MarkEdit-InContext/releases/download/v#{version}/MarkEdit-InContext-#{version}.zip"
  name "MarkEdit InContext"
  desc "In-context Markdown editor for macOS, launched from the terminal"
  homepage "https://github.com/wundram/MarkEdit-InContext"

  depends_on macos: ">= :sequoia"

  app "MarkEdit InContext.app"
  binary "#{appdir}/MarkEdit InContext.app/Contents/Resources/eic", target: "eic"

  zap trash: "~/Library/Preferences/dev.wundram.eic.plist"
end
