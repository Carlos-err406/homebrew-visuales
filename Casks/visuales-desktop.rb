cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.5.0"
  sha256 arm:   "94b305a9fdea1218d2509a71c80d4c4e42440f684eae80c1c9ec99f222e8155c",
         intel: "b38bd0bb92a5d8cc779bf4853ad0337a06bc94ebfd7fbecbf39aaaf3f5cb6e2e"

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
