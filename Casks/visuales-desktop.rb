cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.3"
  sha256 arm:   "3cfe2e0b7cf072462d96585cc8c35842fed17e25961129f8f5c77d24a91a5686",
         intel: "0ff458ebddf337d345ee5367857c92aea48ccb1af399bd609e2af8508f20ee6a"

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
