cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.3.0"
  sha256 arm:   "6c725ba52abac8d76b9ccf33a21ec53408895e727c0331969d46afe9a832b20a",
         intel: "9f77158229aaa0c5665fbb58df332ce169033daa778eba7367629c6753f10c3c"

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
