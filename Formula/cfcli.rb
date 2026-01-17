class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.1.0/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "TEMP_PLACEHOLDER"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.1.0/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "TEMP_PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.1.0/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "TEMP_PLACEHOLDER"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.1.0/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "TEMP_PLACEHOLDER"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
