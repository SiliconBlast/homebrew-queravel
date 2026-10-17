# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.46 2fc61f95863117820a562d1a4b6e6a9e11419a263e320a6767bd9c83052e27bd ca4608495ff4309729e6d388f7b7406a095b840242ce0b44936904d9064adcec.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.46"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "2fc61f95863117820a562d1a4b6e6a9e11419a263e320a6767bd9c83052e27bd"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "ca4608495ff4309729e6d388f7b7406a095b840242ce0b44936904d9064adcec"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "7b40f7540432fbc511997d4a508e8dc3e47b4c91b7018392505d0d10cd199cac"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
