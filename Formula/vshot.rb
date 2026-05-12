class Vshot < Formula
  desc "Video frame extraction for AI — one montage, one Read() call"
  homepage "https://github.com/ClaudeCodeCafe/vshot"
  url "https://github.com/ClaudeCodeCafe/vshot/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "e8ce7829067cbf3f278a2bbe02665caeceb56ec800de6b8fe2b715dd219b604a"
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
