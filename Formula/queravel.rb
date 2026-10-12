# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.34 b134fee7a28bcf89c94c315e9f22a3404a38af2b1b51d7ff6f4476c7555e2d9a 6008d6f091a121f79fa7abd0dec3962542a2aecf59d8fda637ab473c20d5c9e4.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.34"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "b134fee7a28bcf89c94c315e9f22a3404a38af2b1b51d7ff6f4476c7555e2d9a"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "6008d6f091a121f79fa7abd0dec3962542a2aecf59d8fda637ab473c20d5c9e4"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "29cc73ff486c7c2b2362d862a0654df45629eec5e183bca47ba191905ef1560b"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
