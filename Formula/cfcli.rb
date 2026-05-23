class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.10.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.10.0/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "e7819564fe99530ff0ae9bcff1cd560ed1f62ccfc8cce0bd517d15de5642421e"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.10.0/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "8d12aa195e0a7f582a94ae57aeffe1a74babed211f6eee846fd78ab7e906be09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.10.0/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f87820f6e4b71861809deb8313b65f766283d0dc18a68d3c5978efe4a29cff01"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.10.0/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a66a804d04aad0fc8ea84e76bd0f566d3525df33f6e8157eff2dcc2ab3bdc019"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
