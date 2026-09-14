cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.3.1"
  sha256 arm:   "bc85f7c0f54bc8cac3f4ce645f8e2988d0f649d813bc0940afdf8af5da7b7475",
         intel: "8236202a61ed51846d4581f811d967d022c7a063fa756d1c31a88956a126d25f"

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
