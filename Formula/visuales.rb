require "language/node"

class Visuales < Formula
  desc "Search and download visuales.uclv.cu content from the terminal"
  homepage "https://github.com/Carlos-err406/visuales-search"
  url "https://registry.npmjs.org/visuales/-/visuales-1.3.2.tgz"
  sha256 "594634db0d71204490c99675d940e58f8d494cb3c25ad4e31cb4e2aae7db7915"
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
