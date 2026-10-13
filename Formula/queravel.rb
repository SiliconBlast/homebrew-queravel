# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.39 51610dd5549602b7877e45a71093cf17e7436d36aed72b9f2c194e00dc4b9a8f a5ecc63dfc0261ed1f12a8c2a1ae8766bee0bb842dbf1aad53b344c3cb58dcb9.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.39"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "51610dd5549602b7877e45a71093cf17e7436d36aed72b9f2c194e00dc4b9a8f"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "a5ecc63dfc0261ed1f12a8c2a1ae8766bee0bb842dbf1aad53b344c3cb58dcb9"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "3d9171bf93ad714aee0815abf37fbbe0d9f59adc7a66558f21ab140b066051c7"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
