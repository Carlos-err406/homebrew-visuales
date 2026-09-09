require "language/node"

class Visuales < Formula
  desc "Search and download visuales.uclv.cu content from the terminal"
  homepage "https://github.com/Carlos-err406/visuales-search"
  url "https://registry.npmjs.org/visuales/-/visuales-2.0.3.tgz"
  sha256 "58531b9cbf5a309189a50303c4535da3fe0f04a859f1af6fdad55227d477a44a"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "--omit=dev", "--ignore-scripts", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink libexec/"bin/visuales"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/visuales --version")
  end
end
