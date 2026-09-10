cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.7"
  sha256 arm:   "f4adbcc8ae6bb9808982591963b89413c4096e8ee280e9c2098d888dddc0718c",
         intel: "5f71fc3c923fa8eb266ff3bb889c18dfe87d0fe39521f6f5cfe8c33d65b78eac"

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
