class Drift < Formula
  desc "Local-first CLI that captures, compacts, and binds AI coding sessions to git"
  homepage "https://github.com/ShellFans-Kirin/drift_ai"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.2/drift-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "d4989a8ba5543d7d4a2fb17f0cae895745f7848f200f3bd39261172cdca47e0c"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.2/drift-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "7bd12707d9bb92b15f2a5bee0e556e898c7400f622c8741953203bf8f860ffbb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.2/drift-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71f62e56f5a09cfcdee03cda58e95db26d3648486e3446ef938f991c4250adb5"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.2/drift-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a9733340990f58e96a97c566488df5ad1cde8de282c287ef3381fe94d72f497"
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
