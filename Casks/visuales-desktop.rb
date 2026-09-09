cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.5"
  sha256 arm:   "3bb82396ad6a601d7d24d03a016240500e0bf9c171a4e56e0671a4c6d35ff815",
         intel: "8a4428a7b4c45c81226ec70ddd7901a416e567d46d2f15f25b03e42dfa53144c"

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
