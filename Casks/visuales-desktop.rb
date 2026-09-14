cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.2.0"
  sha256 arm:   "09e6558155cb0d8a5473eca6269d03d3a944fb34d17c241563c0917614b810bb",
         intel: "3ee88dc38c98dc55c73363376dd13b23bf86e7ed77239c04634cba50a065b768"

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
