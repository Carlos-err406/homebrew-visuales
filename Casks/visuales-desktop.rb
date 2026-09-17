cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.8.0"
  sha256 arm:   "ded48048f08de6e644b1fed611bd42b6d694ec4ee501f56dd9140f40f8379ce8",
         intel: "09e66184b2e09ce0042c84e6ebad3a57d08d7510b5f5be86708acee8123daf00"

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
