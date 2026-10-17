# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.44 8b37724684bdab4a115b212f08cec6a94abdb42d54739622e9327544f2547fa9 44227796b71596580b75693dd8de2a8a32eee40b98fc7c625c63f41a7734432e.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.44"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "8b37724684bdab4a115b212f08cec6a94abdb42d54739622e9327544f2547fa9"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "44227796b71596580b75693dd8de2a8a32eee40b98fc7c625c63f41a7734432e"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "76c6e606d5b70ee9a53e298e79bcc0215bacb078ceaee5b40fc6333af8708a0d"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
