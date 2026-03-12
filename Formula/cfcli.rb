class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.6.2"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.6.2/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "024a41305b2c61e6028a27b8db4736be226f8ae3c7a228b241c2f5da7a391f79"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.6.2/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "fd482ba70a804635c67b7bba07ffc8a14296d850628170ae89551a70571ddc1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.6.2/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37953074557a8d9f421d553851e14f5b90c36c23e09eb303e3408a1a69301de7"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.6.2/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1a94c17833fb90b71de9ab46cc24b4e4229711b6f450e44b3ed825ba0dd2380c"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
