cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.1.0"
  sha256 arm:   "42427981b1640e55fb98589df9d8c8c269092acdf0a095415e31a7c7851ef416",
         intel: "4de542e0be637d8bed973fa65ceee8a33f085086da9608f1adc04a77f7e135fb"

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
