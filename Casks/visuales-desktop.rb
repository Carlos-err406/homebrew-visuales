cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.4"
  sha256 arm:   "a48aeb14ccc2dace8bf303e30383acdbbfb2670fb8e1606832d31009ec4451ec",
         intel: "46033e064e3f0214f9e5e34785a8bba212a3570e80599de2f61bf63ffcac0c17"

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
