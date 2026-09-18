cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.9.0"
  sha256 arm:   "93320e3ef35fb4ee6b423fe4da4bc9c67567352de31ab03abb9d72a856eff2ad",
         intel: "2a034ec1a742441aae355f089891dd7384a5b06458853e2fee40152fbba87c46"

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
