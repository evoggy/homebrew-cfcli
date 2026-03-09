class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.6.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.6.1/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "9f275785ae3374eab504f1255681a59520073d109ffb4d7c926158036fe4a32d"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.6.1/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "3fec275e0d80986ab52d59cba403bee5ed151c1377de112aaa7d3800b69e474a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.6.1/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54bc60ba5dd46d52fa01a264d60007ca41253f2d0f97a47ddef18c7ddf388f7e"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.6.1/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1e8e6c30b6678981108af8b86023c675878a7b10ff9d977d8342aeeccac6b61"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
