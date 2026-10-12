# Homebrew formula for the Queravel CLI (pre-built binary).
# Rendered by .github/workflows/release-homebrew.yml and pushed to the tap repo
# SiliconBlast/homebrew-queravel. Placeholders: 0.9.25 ce5b2f90b163b17b1324a2544e5841740749346bb4556d016de24b07798b7517 e6eb6c6d544eece1991ff926511a7675e1d6cc896487cfadd2443bc1d7397ea5.
#
# Install:  brew install SiliconBlast/queravel/queravel
class Queravel < Formula
  desc "Agentic coding assistant for the terminal (Claude Code-style)"
  homepage "https://queravel.com"
  version "0.9.25"

  on_macos do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/macos/queravel"
    sha256 "ce5b2f90b163b17b1324a2544e5841740749346bb4556d016de24b07798b7517"
  end

  on_linux do
    url "https://queravel-backend.fly.dev/api/v1/cli/download/linux/queravel"
    sha256 "e6eb6c6d544eece1991ff926511a7675e1d6cc896487cfadd2443bc1d7397ea5"
  end

  def install
    bin.install "queravel"
  end

  test do
    assert_match "queravel", shell_output("#{bin}/queravel --version")
  end
end
