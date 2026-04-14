class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.8.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.8.0/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "adb38a774b428ba9e1f73f6d61452ea2cdbbce9ae531b477d0e8b34c7cbcab70"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.8.0/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "dd4f3a6d902becf59c69cf0e095cce1c2d809312dd879d6df13aa245ba24604f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.8.0/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cfbc207cbbc85a5fc77b670949c3d547a775748f8b88f7171eab294fd5cc06ea"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.8.0/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3cf01382ba5d7614f2bbfce63ac231e8860892e7284e89b846594c4393923ad"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
