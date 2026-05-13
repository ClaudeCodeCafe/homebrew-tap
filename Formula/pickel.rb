class Pickel < Formula
  desc "A pickaxe for mining Claude Code conversation logs"
  homepage "https://github.com/ClaudeCodeCafe/pickel"
  url "https://github.com/ClaudeCodeCafe/pickel/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8a5b2a0c8128cbde242fb303bed37a4b2adaaf5f21095c3bee1fce1b3822179f"
  license "MIT"

  depends_on "python@3"

  def install
    bin.install "pickel"
  end

  test do
    assert_match "pickel #{version}", shell_output("#{bin}/pickel --version")
  end
end
