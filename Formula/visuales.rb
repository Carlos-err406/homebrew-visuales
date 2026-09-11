require "language/node"

class Visuales < Formula
  desc "Search and download visuales.uclv.cu content from the terminal"
  homepage "https://github.com/Carlos-err406/visuales-search"
  url "https://registry.npmjs.org/visuales/-/visuales-3.1.0.tgz"
  sha256 "3988763f906872bc68af765505ba5d24fae9cc1b2dba8c14c1c4188cb08331cf"
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
