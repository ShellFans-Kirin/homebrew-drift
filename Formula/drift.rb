class Drift < Formula
  desc "Local-first CLI that captures, compacts, and binds AI coding sessions to git"
  homepage "https://github.com/ShellFans-Kirin/drift_ai"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.0/drift-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 ""
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.0/drift-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.0/drift-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 ""
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.0/drift-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fca7234401ad4da0943e894e387d94174b6121dc646d7d2807486a71e407cac3"
    end
  end

  def install
    bin.install "drift"
    doc.install "README.md", "CHANGELOG.md"
    # LICENSE is installed automatically by Homebrew
  end

  test do
    assert_match "drift", shell_output("#{bin}/drift --version")
  end
end
