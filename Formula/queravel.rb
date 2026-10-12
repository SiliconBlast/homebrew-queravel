# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.27 52f3b073f0a2a5e0dfde25fd795139cb00951d8c64539401f96f14bb3dfe7b64 917c3110f61b5c249de9c05730ed8d7c3d33f1c431fb4c94959d264e9ac83b23.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.27"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "52f3b073f0a2a5e0dfde25fd795139cb00951d8c64539401f96f14bb3dfe7b64"
  end

  on_linux do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
    sha256 "917c3110f61b5c249de9c05730ed8d7c3d33f1c431fb4c94959d264e9ac83b23"
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
