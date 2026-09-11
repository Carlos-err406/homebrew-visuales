cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.8"
  sha256 arm:   "34261b7fff8369c99bb306305813e8f0fc45c958f2b74eb60e49753b24b4b1ca",
         intel: "f481cb1df3a91e1a05c5563be36110971c225a349ae7ecf59d1ab06e6a349b6b"

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
