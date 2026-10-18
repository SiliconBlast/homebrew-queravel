# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.50 7edb16ddd1dc9569fc169c5bc0c984f563eeec46f3c937a33e338b8bfe749a9e f552b6bce64160d09b15c98fb4e54cf541ab89abd975ac1f2ada816d05d95a25.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.50"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "7edb16ddd1dc9569fc169c5bc0c984f563eeec46f3c937a33e338b8bfe749a9e"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "f552b6bce64160d09b15c98fb4e54cf541ab89abd975ac1f2ada816d05d95a25"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "19c7771e765cf1c274e9c7e26a5fead706724e8fb5fc18d904f4d39a501cb9f0"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
