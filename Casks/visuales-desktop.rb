cask "visuales-desktop" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.1"
  sha256 arm:   "c5229816d837482badc6de474b02e2b6755fd8115a9281ebfb5f7d38ff202beb",
         intel: "247620fea2cefa2e6940b20ca7a5c782c6ef3fed649331b8310fbad4f77e392c"

  url "https://github.com/Carlos-err406/visuales-search/releases/download/v#{version}/Visuales_#{version}_darwin-#{arch}.dmg"
  name "Visuales"
  desc "Search and download content from the Visuales library"
  homepage "https://github.com/Carlos-err406/visuales-search"

  auto_updates true
  depends_on macos: :ventura

  app "Visuales.app"
end
