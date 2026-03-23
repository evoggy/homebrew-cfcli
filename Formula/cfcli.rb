class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.7.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.7.1/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "12f8f5642ea014c4899df58717c892f6896cd58e5d2e1f9a9707d22b322bf198"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.7.1/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "bd694dad76be5ae5d62d50a7b0387e62d9f66e6f04a7c5d6d226f6344e10b413"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.7.1/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "427f9565637e40fc7f10e4b981673cba87633ae342c53701aae8504552c081a9"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.7.1/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f9082a2664cde998fc1fe07c91e8131e688022afbe275d150914d2f6af564c0"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
