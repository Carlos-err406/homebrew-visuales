cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.7.0"
  sha256 arm:   "c186e40e65cce855c3fe1581739faa413f5f36000c47e9a9ef4258fc9e449d8a",
         intel: "c7acfa35335827f17c9732f4d22321567b9009d0813cf036fded5e955255c0aa"

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
