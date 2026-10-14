# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.40 d4a8e727f83767655da7adb3c7daf99b1104bd7373711d296423d0b407e6e394 bb4b157b5fddadab487e208e20f012820215a71dffcc0d469c7af7caec1b7f5d.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.40"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "d4a8e727f83767655da7adb3c7daf99b1104bd7373711d296423d0b407e6e394"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "bb4b157b5fddadab487e208e20f012820215a71dffcc0d469c7af7caec1b7f5d"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "950537e34d29a18810e317b5cb628ff9898d1ab7d775af736ac65a27b05f3c3c"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
