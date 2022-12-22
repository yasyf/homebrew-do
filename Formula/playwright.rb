require "language/node"

class Playwright < Formula
  desc "A high-level API to automate web browsers"
  homepage "https://playwright.dev"
  url "https://registry.npmjs.org/playwright/-/playwright-1.29.1.tgz"
  sha256 "db072864b9d7722c617c74410f56e57fbdaeb010dd8023e84a3e4a75cf7d07db"
  license "Apache-2.0"

  livecheck do
    url :stable
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
