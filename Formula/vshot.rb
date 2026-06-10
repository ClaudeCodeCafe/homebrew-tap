class Vshot < Formula
  desc "Video frame extraction for AI — one montage, one Read() call"
  homepage "https://github.com/ClaudeCodeCafe/vshot"
  url "https://github.com/ClaudeCodeCafe/vshot/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "23428e5f0c7ae5cc7751a1463a91242f58db9fb9eef0fdcc7d7c3c2f409d7f50"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "imagemagick"

  def install
    bin.install "vshot"
  end

  test do
    assert_match "vshot v#{version}", shell_output("#{bin}/vshot --version")
  end
end
