class Drift < Formula
  desc "Local-first CLI that captures, compacts, and binds AI coding sessions to git"
  homepage "https://github.com/ShellFans-Kirin/drift_ai"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.1/drift-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "12e552d2528eb76274805f81d24aa7f63de995f204147929d2ff43b62fa9a357"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.1/drift-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "9560703927713bdf2f162622d6ae12b6e95b133dc32d097c2d6dbb2aab4062a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.1/drift-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e33878c9521c20c55da396a2c5d5a061d234afc8877be4454389fd08aba08f62"
    else
      url "https://github.com/ShellFans-Kirin/drift_ai/releases/download/v0.4.1/drift-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e2e062ae286fd4f97c1fd081450fd8865c1160781d898f12d4d482bbf412fb2"
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
