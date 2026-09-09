cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.6"
  sha256 arm:   "fd85087bc21de80414bc55e7c14bf7465af2c25d5aac0166c2a200d365f45ab8",
         intel: "4cbcdfc28b23a4729ab792c784c130ff1add4e4e689eef74b5526ad0ac3b58d5"

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
