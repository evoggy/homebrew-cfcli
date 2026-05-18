class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.9.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.9.0/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "e53c4f757a4a0cfadb7dee68e61228e8dc14569a28d3159fe314124327d5d56e"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.9.0/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "b57f33a303d65b5e391f0cf1fcd653728770a40df4c7d8d34c53e14d22e32d3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.9.0/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0c3bd09f316960a132822e7d676ab54b3449e7fe131533d485912c4ad2a2129"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.9.0/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "501ca3a25326bc41a5276ce598864d1ab796a5b0d66294d491e041185572a4f6"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
