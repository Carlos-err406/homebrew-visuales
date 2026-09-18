cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.8.2"
  sha256 arm:   "b7c8c46dcf560bf905ad4e439246cfe85e42fbb4031735fb50ea85f15bbc49da",
         intel: "009ccc95ad1f50fbc74fa8c50b9ba4a103b89bfcd942125a665d96f14fa4d93b"

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
