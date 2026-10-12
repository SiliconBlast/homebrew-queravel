# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.33 32f7a44a8bbeac0fba3c368eb48d9c21f8aff5cd3d70544cd9eadf08fee31910 c98f790fc27fabea19af9f00b6faf45f236cd56f9922174d724523edcd53961d.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.33"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "32f7a44a8bbeac0fba3c368eb48d9c21f8aff5cd3d70544cd9eadf08fee31910"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "c98f790fc27fabea19af9f00b6faf45f236cd56f9922174d724523edcd53961d"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "2864a171ee206c0f6d7dbcd65b686ba76956cfd54fe5d1ee55ee01b9129f223a"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
