class Cping < Formula
  desc "Ping Claude's service status from the terminal"
  homepage "https://github.com/ClaudeCodeCafe/cping"
  url "https://github.com/ClaudeCodeCafe/cping/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "abc802816da046e227eaddb4f4e7da71403b850d3aa914ef00f51087474c32dd"
  license "MIT"

  depends_on "python@3"

  def install
    bin.install "cping"
  end

  test do
    assert_match "cping #{version}", shell_output("#{bin}/cping --version")
  end
end
