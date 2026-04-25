class Drift < Formula
  desc "Local-first CLI that captures, compacts, and binds AI coding sessions to git"
  homepage "https://github.com/ShellFans-Kirin/drift_ai"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.2/drift-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "cb5bbf7dba6f8ab24a5b82b49c825d31dad4a76b1637b3f9be23851bc95036cd"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.2/drift-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "ed641da9dc2cbeed9bfef1534a76b428dbbedfdb74946896d4fed17054b3aded"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.2/drift-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "081248c75f94c38e438eabfd2b1777187266eb761d8c4fe0ba2581d72cdfaa31"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.1.2/drift-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f023bfe3263b914040b0e4a38c7fa5bd3b1365aa55955d229146b6e7b347eb05"
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
