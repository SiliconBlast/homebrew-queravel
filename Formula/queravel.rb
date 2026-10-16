# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.42 c751f757ead038dd0fe186e5b3aa3aa7cb6d0175086ff5a85919e28d9938ffd1 e0df72a83861ee4c3850409cfa3bfd81936270556dd5d57bb65ee9d2e9fce837.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.42"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "c751f757ead038dd0fe186e5b3aa3aa7cb6d0175086ff5a85919e28d9938ffd1"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "e0df72a83861ee4c3850409cfa3bfd81936270556dd5d57bb65ee9d2e9fce837"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "0b52e4dd63ffa1ec02ac5cad2c8786875ba45701ac30cb213c1a06a295132f42"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
