class Drift < Formula
  desc "Local-first CLI that captures, compacts, and binds AI coding sessions to git"
  homepage "https://github.com/ShellFans-Kirin/drift_ai"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.0/drift-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "eb445fe2ad8099b93aa064a2442fcc0dde9c1c12e7bb13ef9805a8bfd246c0d4"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.0/drift-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "d4af4f6d75697dbb808825f3dfa0e8d23abbcf506ac99e3031780a1bed8162a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.0/drift-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36a5041abdcd7caeef005daf99d3602e08c319da3b012fdfa83a34cd32f72b75"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.0/drift-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f335a23be21e6587e01e4d040c7e8e710c9808770eb139fb1c4114dd49d9d6a"
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
