# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.41 03af7eec2874d2847708a612ec8cef2e1ecba85635be5cec4a8ed7d5c9b98ef6 3fe57c45584a8bb1c5b79fdb7b53e1b7e88482c395983b3d50567c7843b0e7b1.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.41"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "03af7eec2874d2847708a612ec8cef2e1ecba85635be5cec4a8ed7d5c9b98ef6"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "3fe57c45584a8bb1c5b79fdb7b53e1b7e88482c395983b3d50567c7843b0e7b1"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "d2bfdcc824e2b38434cfecbb058d20847a3c49d4f948c36ee79a9a03116041cd"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
