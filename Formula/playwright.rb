require "language/node"

class Playwright < Formula
  desc "High-level API to automate web browsers"
  homepage "https://playwright.dev/"
  url "https://registry.npmjs.org/playwright/-/playwright-1.29.1.tgz"
  sha256 "db072864b9d7722c617c74410f56e57fbdaeb010dd8023e84a3e4a75cf7d07db"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/yasyf/homebrew-do/releases/download/playwright-1.29.1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, monterey:     "4b9b8d41fbd2b9b55f8f20b521f26e1926ab4a732decb0b7dcafe5f4a2f2562c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c0f79622e46f3b0309bd166b0e7ceb0a86a2b9288aaab302ba93132d4ae8fa84"
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
    system "#{bin}/playwright", "install", "--with-deps"
  end

  test do
    assert_match "1.29.1", shell_output("#{bin}/playwright -V")
  end
end
