cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.4.0"
  sha256 arm:   "50d30e426750ea6a0777962ffeeade15724f3c07e0aa779ae015c74c346d4cbc",
         intel: "48da17f63327d5141ea36f3a92291b949b974748e5b3b254b0ff3348192f166a"

  url "https://github.com/Carlos-err406/visuales-search/releases/download/v#{version}/Visuales_#{version}_darwin-#{arch}.dmg"
  name "Visuales"
  desc "Search and download content from the Visuales library"
  homepage "https://github.com/Carlos-err406/visuales-search"

  auto_updates true
  depends_on macos: :ventura

  app "Visuales.app"

  caveats <<~EOS
    Visuales is ad-hoc signed and is not notarized by Apple.
    If macOS blocks the first launch and you trust this release, open
    System Settings > Privacy & Security, click Open Anyway for Visuales,
    then confirm Open. Try launching the app once before checking Settings.
    Managed Macs may not allow this exception.
  EOS
end
