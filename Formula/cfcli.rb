class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.6.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.6.0/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "772c70ce7128b46abc1d9c37da0e98fb918e63caa52fe6ded87771126b541cf3"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.6.0/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "965642d1915671a8d7bd414b89e511a86d21024cf3fb66f2e7f6395273dd6fed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.6.0/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6d70414d091d3acd24321f27aadcffb8a081e1ef5cc5c7352a33c849eb09989"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.6.0/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ead21aa33d602799b425dd1ab211079b469d69c409767ade95366bbd9de8eedf"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
