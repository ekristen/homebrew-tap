class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.69.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/archive/refs/tags/v3.69.1.tar.gz"
      sha256 "6b616a95c6e0fd9335e59b618c89501e900a42c1210f9f0b080b90ce1cbbfc1d"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.69.1/aws-nuke-v3.69.1-darwin-arm64.tar.gz"
      sha256 "895f550c3ff70ab3c53c0479c1841c7e3595219bedfd724aec019d6cce66ff1b"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.69.1/aws-nuke-v3.69.1-linux-amd64.tar.gz"
      sha256 "e906e646482269400d11545fdfef4be37708923f0bbaee31dc36224f01d40136"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.69.1/aws-nuke-v3.69.1-linux-arm7.tar.gz"
      sha256 "648957f836d295529114c9d69c902aa9c1b83d80c9d7f37c1cbbc9b794f9d3ba"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.69.1/aws-nuke-v3.69.1-linux-arm64.tar.gz"
      sha256 "e317812b5ae1119d1fb97e4b50d2cabd1a58e96c760a96f9f745b87b5c8102b7"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
