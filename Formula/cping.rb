class Cping < Formula
  desc "Ping Claude's service status from the terminal"
  homepage "https://github.com/ClaudeCodeCafe/cping"
  url "https://github.com/ClaudeCodeCafe/cping/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "29ab5c79cb919e0726d14417a738d6d2d5c76ebdc9d1fd4081a9e65f3a4a3a34"
  license "MIT"

  depends_on "python@3"

  def install
    bin.install "cping"
  end

  test do
    assert_match "cping #{version}", shell_output("#{bin}/cping --version")
  end
end
