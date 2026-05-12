class Vshot < Formula
  desc "Video frame extraction for AI — one montage, one Read() call"
  homepage "https://github.com/ClaudeCodeCafe/vshot"
  url "https://github.com/ClaudeCodeCafe/vshot/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ec27a00b0a84b01ed427aaf6dab8e6a248f3a580fc5897af08f38444779e56d8"
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
