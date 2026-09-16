cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.0"
  sha256 arm:   "346cb0c28baa73ef8bad139c8698d4cfc6e96645cc47e2e7abf297291bf07bda",
         intel: "36b9ea298590afcba736cf1307606c8b35897f003e85ee1fad1be336e89cb322"

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
