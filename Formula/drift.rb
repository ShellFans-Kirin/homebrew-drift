class Drift < Formula
  desc "Local-first CLI that captures, compacts, and binds AI coding sessions to git"
  homepage "https://github.com/ShellFans-Kirin/drift_ai"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.2.0/drift-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "88294ce87b941add51142baddbcc9c4fe94f467566904a6bc6fe9ca3a8cd5671"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.2.0/drift-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "39ba98cc58432939ab020c3d4eaf54a82488378f63699adec84f416b21fc9e66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.2.0/drift-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4380029d47f2051891b9e87d880697ce9d44f52836f818ce3215f288d389c26"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.2.0/drift-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5261b605c8f4f2834e4672923d83e2f28f958db7f2d17faa5cdc664924c4aa0"
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
