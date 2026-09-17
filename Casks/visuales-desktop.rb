cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.8.1"
  sha256 arm:   "d2c0d94dbcd2ef5fad831229c91dfc7b16d784eb6b2b719428b845a2cf6f71f6",
         intel: "64d658c9d6c52acd7a5ee52c1e167653f7140d1ad5f158aa0e337b2a1c308e48"

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
