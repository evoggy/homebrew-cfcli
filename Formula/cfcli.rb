class Cfcli < Formula
  desc "CLI tool for Crazyflie drones"
  homepage "https://github.com/evoggy/cfcli"
  version "0.7.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.7.0/cfcli-aarch64-apple-darwin.tar.gz"
      sha256 "4c54e11c69c2ae58036944dd432f5a228440e3e50ec25e203daf804ea19df467"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.7.0/cfcli-x86_64-apple-darwin.tar.gz"
      sha256 "5a796fe7822debef85f9accceb65b2c1643211eadeeca46a7b02b8173a5d78bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/evoggy/cfcli/releases/download/0.7.0/cfcli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d84fe5fa7f51b6772c17f5f45d17d2d705d3a2eef50656a9e9c1b04579bfb27"
    else
      url "https://github.com/evoggy/cfcli/releases/download/0.7.0/cfcli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48c0f1c73223723a7f8300a899cd9b91d572a253ef120a18986497680c254dc4"
    end
  end

  def install
    bin.install "cfcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfcli --version")
  end
end
