# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.37 37d9b80d78b090367da2d152a37f0a8a357bd5b7ce35cfbeabeb5af0d3db34a3 9f27202bc7c34b6df0c767fef96571ccb52c380e71f936a8c5d751b0c652d1ea.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.37"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "37d9b80d78b090367da2d152a37f0a8a357bd5b7ce35cfbeabeb5af0d3db34a3"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "9f27202bc7c34b6df0c767fef96571ccb52c380e71f936a8c5d751b0c652d1ea"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "3d99464e6b39163359b20734699b5011740af0699dd1cd5915ed446bd5102911"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
