# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.52 7d5401e0700ade46d3b7134fb20d7682a48e8f392d0e30769866900133f568b8 9e22b2049928cb46966cc3d4d838c07807383882d174135018fa41ade7914ed4.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.52"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "7d5401e0700ade46d3b7134fb20d7682a48e8f392d0e30769866900133f568b8"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "9e22b2049928cb46966cc3d4d838c07807383882d174135018fa41ade7914ed4"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "f1d3c24e5b019d240a7d547c9ecf35d4e793fb4e1549cfcee7f013c5b05c7f7e"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
