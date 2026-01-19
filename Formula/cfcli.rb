class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.5.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.5.1/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "66a0b96ad8b187ffdc089e3a121b7c167dfaef1f501402eb21184dc12f83f01c"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.5.1/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "22fb1a4b7085d621e1634b4513ff70b5827a35fc553e60a717e97e6d1fae2d20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.5.1/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9d70007d3aa7c5a34185ce043d6af5ef5d9f31f71922562a7df205ce32715d7"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.5.1/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebf2caee6902e1833b7d50a7a00f63ff86ffce0247577df71b724ccbaa126dcb"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
