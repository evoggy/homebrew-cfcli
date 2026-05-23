class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.10.2"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.10.2/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "0927530afb4d7368af77913857622a5ddf6eb89ee714621e136de0c2049bf031"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.10.2/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "273bde3d2c0efd9952c296d8d7e10962014f3d2159f448d3c10361acc14fccca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.10.2/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24a4817f9842bc020db4e57371dc8b9a19d92781e430117483eccb0037adac66"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.10.2/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df02b936c35efdecd2d2ab2b7f7f7f29a9c65942faf3c14398d45c53e8e67a8e"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
