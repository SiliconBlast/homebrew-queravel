# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.35 d8368cd9fd7f40d7c5562d1bf6897d85d74916dded1035007f3b2527cf6f1a8f 992293cb15a45c3092635b5ed03b13ec784966fe28860f29d91f7197e58f3ba2.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.35"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "d8368cd9fd7f40d7c5562d1bf6897d85d74916dded1035007f3b2527cf6f1a8f"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "992293cb15a45c3092635b5ed03b13ec784966fe28860f29d91f7197e58f3ba2"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "70a3bede6faae932f22c63278d2e60e78c8713294c58e426b863d69130b4524a"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
