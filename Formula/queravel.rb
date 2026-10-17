# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.49 2c09990da27ab19bb225b67e403958f2567ef32736d5e7da015c91bc2228f2c7 f2100e77e3e725d3043f6852e6beb630130cacad5ef941c463fed1a0b57b0c54.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.49"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "2c09990da27ab19bb225b67e403958f2567ef32736d5e7da015c91bc2228f2c7"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "f2100e77e3e725d3043f6852e6beb630130cacad5ef941c463fed1a0b57b0c54"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "bb81a5a685704b21077f62b2c7af419fbeb72e53cfc27ecd266673f7bf36c370"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
