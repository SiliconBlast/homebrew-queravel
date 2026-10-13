# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.38 81e5e2b6818813bea9f1e11c4c5adac13abf01e110aacb329bf6b2e81e4f2f30 dd1a34d74eec060263448a6ebd5f5f1e36fdb9aa3c8af88ae6e96b671ed3b523.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.38"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "81e5e2b6818813bea9f1e11c4c5adac13abf01e110aacb329bf6b2e81e4f2f30"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "dd1a34d74eec060263448a6ebd5f5f1e36fdb9aa3c8af88ae6e96b671ed3b523"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "081c5141ff6748dc11c2a05ba31494898b50e0409014b5eefe5cc11de97390ba"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
