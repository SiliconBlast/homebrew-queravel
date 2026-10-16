# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.43 54e5146cbff3d3cf1184cb93a352e9fa9ffc0b6ccb23314262a3213eaa801a5c c4430313d8adb92630517c7a49a564d0d33af4333977d1238129a999edc514e4.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.43"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "54e5146cbff3d3cf1184cb93a352e9fa9ffc0b6ccb23314262a3213eaa801a5c"
  end

  on_linux do
    on_intel do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
      sha256 "c4430313d8adb92630517c7a49a564d0d33af4333977d1238129a999edc514e4"
    end
    on_arm do
      url "https://queravel-backend.fly.dev/api/v1/cli/download/linux-arm64/queravel"
      sha256 "6265936e52a3e8de6765c15d74ddf8ff9ea27fa3301eb5bc56be694624cdf84b"
    end
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
