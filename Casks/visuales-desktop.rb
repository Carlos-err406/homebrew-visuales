cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.5.1"
  sha256 arm:   "bd17cf59bb31185ce2767334bce27d0b6332648462f9668a68b4ffd455d5d6ab",
         intel: "c7b0da5dd6345bafc6e202bb12b466fa8ee0d0ecff501e8a03720a6f37331fcf"

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
