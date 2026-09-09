cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.2"
  sha256 arm:   "2582cf2c435dc0b172303894093d1974d1ef0ce4beec89ed18e0fed750744724",
         intel: "635e0a0666e6bd3a057c90c1d2a96122e586ca3dc888adbcb092b3bbefd0b315"

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
