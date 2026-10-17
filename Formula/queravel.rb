# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.45 675bda45c6ae1eea25412e43b2a86a204f5cd835f6330c52b79ab16a2914c015 203056c5a25e6a13739cf04171f8143a09d2bd8ac195c4cb5d54e87404f7bf07.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.45"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "675bda45c6ae1eea25412e43b2a86a204f5cd835f6330c52b79ab16a2914c015"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "203056c5a25e6a13739cf04171f8143a09d2bd8ac195c4cb5d54e87404f7bf07"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "4045ad39d70d391d228ca70bed7397ca9b65b7a5da0f5d5d5c92ecf4a119e7c9"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
