# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.36 ad536351e7d8c26bdb6026c9bb293df0424238dbb070c371056aba3598d82579 8ad779d43e6e579314732dbb5155d09665947b5f912350b4ea6e73ab1b9f41c8.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.36"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "ad536351e7d8c26bdb6026c9bb293df0424238dbb070c371056aba3598d82579"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "8ad779d43e6e579314732dbb5155d09665947b5f912350b4ea6e73ab1b9f41c8"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "1948498ca83f8cf6edf6dea98cbfcbb8e37a9408d1c50c864a3ed8179927beac"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
