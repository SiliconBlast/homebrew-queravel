# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.32 e8c8d3b1100f78c374df070b5ac83169f17a1e9d2dbaeb446eceea27097f0a29 b42a3446562c19482e2026543927b80f53edad27a8560956ffc827cf6725ceb9.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.32"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "e8c8d3b1100f78c374df070b5ac83169f17a1e9d2dbaeb446eceea27097f0a29"
  end

  on_linux do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
    sha256 "b42a3446562c19482e2026543927b80f53edad27a8560956ffc827cf6725ceb9"
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
