# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.48 cd5d52d655f4c4404e6be9d73081a8a87bcae6b0ae451e928cd0dad7eaa865c4 111e701c41e5309ed2c4bdc149ad59e0918b507525372630ab672401a4c6997d.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.48"

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
      sha256 "d2c28c41f0518c76412d8b54703b38a246e1f2e22c5cf5768509489da07d2a5c"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
