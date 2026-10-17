# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.47 cd5d52d655f4c4404e6be9d73081a8a87bcae6b0ae451e928cd0dad7eaa865c4 111e701c41e5309ed2c4bdc149ad59e0918b507525372630ab672401a4c6997d.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.47"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "cd5d52d655f4c4404e6be9d73081a8a87bcae6b0ae451e928cd0dad7eaa865c4"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "111e701c41e5309ed2c4bdc149ad59e0918b507525372630ab672401a4c6997d"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "e422831fb3f1274b5624b12f92c503a03449ccd09c4987f57a6f9af09dc3ceb2"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
