cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.1"
  sha256 arm:   "4719e2c44bc66b218012fcc7198e9718b5111a317daf5677c02071ce0848d96e",
         intel: "24d3c56c1c65eb1334060f60f7768c2b37853dc6052e681396e89269056190e9"

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
