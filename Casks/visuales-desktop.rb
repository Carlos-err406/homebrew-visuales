cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.9.1"
  sha256 arm:   "c2a75b73435c9b76bf2c63790c4ff49c6ba0bf340bd01b76159cf3767df7b3b5",
         intel: "a605f0cea4fb8ea8f4ac298b6cc51568ccb7eb3d60d7a2fd1421b29dcf36f19d"

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
