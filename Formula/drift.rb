class Drift < Formula
  desc "Local-first CLI that captures, compacts, and binds AI coding sessions to git"
  homepage "https://github.com/ShellFans-Kirin/drift_ai"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.1/drift-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "21df1a60f1b8291a0c4b1c465e90b317168743f3ed5b777fcf40c410e60db867"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.1/drift-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "d3c8a53773cbf38ec563fde629c613f0ad74d7c0fa15f8dff7b260842a078d07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.1/drift-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb6b401272dbd70bb43a38e8d92c2285c7510f1cd1b17d87ff4c19bfee8042a0"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.1/drift-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d335749816f294a9e478c820f03c16dacb0fb8c66ba25d5377cfb6d362ba0bbc"
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
