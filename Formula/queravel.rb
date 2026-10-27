# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.53 3baba52c1fe3d391252332da531e711055cf24fc691fbf308138bb4338caf636 e9838ef926009861350ca486c345446f1c96e1e4971c49498e7fb03e0ac941ea.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.53"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "3baba52c1fe3d391252332da531e711055cf24fc691fbf308138bb4338caf636"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "e9838ef926009861350ca486c345446f1c96e1e4971c49498e7fb03e0ac941ea"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "4b258bf5abb9f4c6c0239e05a3e4187a55899b54f1a10b41211d46173b59d102"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
