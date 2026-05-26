class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.11.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.11.0/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "87935f9403a9f9b15d0b6e2c32e2347db0a3cda4de30743a28246c119c0fb13c"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.11.0/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "98f54c706614495db9648c09721839d6c9007b0053c4393f7a38f7456e856023"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.11.0/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ce8468fd60c631a98ffccb9f8f02cbf460cf350e7e4f32bb323cde32fc9e91e"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.11.0/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2018231ecf79a1c988628b2a15908130159587de793c163af5ba0ee0d25a0e1"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
