class Vshot < Formula
  desc "Video frame extraction for AI — one montage, one Read() call"
  homepage "https://github.com/ClaudeCodeCafe/vshot"
  url "https://github.com/ClaudeCodeCafe/vshot/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "94ce9dfa9f8d05f5f647016398b2d932ab8fdbf0e98497653fb8a4b4afbf4b76"
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
