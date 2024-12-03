class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.34.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.34.0/aws-nuke-v3.34.0-darwin-amd64.tar.gz"
      sha256 "e68b2d0b5045acb9042c83266a2b898c11cbba416a9659aa885cb0c1e143930a"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.34.0/aws-nuke-v3.34.0-darwin-arm64.tar.gz"
      sha256 "80f46c323870e1c2ccb05c204c6c7f0ead905af3a3e383f3f0bb3826d915f6b2"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.34.0/aws-nuke-v3.34.0-linux-amd64.tar.gz"
      sha256 "d9799025ae2cb4e769efbdda57bf84f14e1712f596ce95ef0a16071edf8766c9"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.34.0/aws-nuke-v3.34.0-linux-arm7.tar.gz"
      sha256 "86afda194864e924c8b892f8fca201e5eef0f92154d4c68c3f0621ee3cff8059"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.34.0/aws-nuke-v3.34.0-linux-arm64.tar.gz"
      sha256 "f88e4194b11aa166d86b36e3befba52b5ffa1de7e60ab776c1c0ee742ea567e2"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
