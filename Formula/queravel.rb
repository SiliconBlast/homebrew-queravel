# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.51 7360f24969e25acf5db86811f28093f26dad92823d52d62a1a2abfce1730d96a f4391b9a7a2a0c583b3a11c33f4d4296c6aa4367560fc482c398fcf41c376aff.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.51"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "7360f24969e25acf5db86811f28093f26dad92823d52d62a1a2abfce1730d96a"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "f4391b9a7a2a0c583b3a11c33f4d4296c6aa4367560fc482c398fcf41c376aff"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "dd85339e9cc4b0a809aebf2bafb451475c5411d0a6a871b4e61569523b55fa94"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
