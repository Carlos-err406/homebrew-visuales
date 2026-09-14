require "language/node"

class Visuales < Formula
  desc "Search and download visuales.uclv.cu content from the terminal"
  homepage "https://github.com/Carlos-err406/visuales-search"
  url "https://registry.npmjs.org/visuales/-/visuales-3.2.0.tgz"
  sha256 "12f36bb280f6ccb7c83444b0a655a91b74b3c15353fe963de2a899c9964889ae"
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
