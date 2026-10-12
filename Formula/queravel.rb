# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.26 974ee758ee3abdc87711cb24c7ed445289e4e9564fa25ed946d0bc1dd0b91073 45709098d8df67d32fbd328d6af1b83ede487bd237f62ef009da9da8f00d5146.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.26"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "974ee758ee3abdc87711cb24c7ed445289e4e9564fa25ed946d0bc1dd0b91073"
  end

  on_linux do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
    sha256 "45709098d8df67d32fbd328d6af1b83ede487bd237f62ef009da9da8f00d5146"
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
