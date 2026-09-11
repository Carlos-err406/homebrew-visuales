cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.0"
  sha256 arm:   "9019e5ea1244e86ac49f50fac413bd70d17e1bc1da94ca73cac5847852772db6",
         intel: "c4f2a76559de401c8e9ce23c6d8d54f6bef31959d7597e790faa688ff2e9afcf"

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
