class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.56.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/archive/refs/tags/v3.56.0.tar.gz"
      sha256 "a65e27f8ae32e6b923c498fe49eeaf191fdc919b92a636f0cf843b27cca57dad"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.0/aws-nuke-v3.56.0-darwin-arm64.tar.gz"
      sha256 "fed02abe4f48059551d5cc8e8f5e62a21bf06e45131a44a82d1c133253da73c5"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.0/aws-nuke-v3.56.0-linux-amd64.tar.gz"
      sha256 "52bb36793d07fcc3b0c35a1df2bbdd46ec53e48901bb5afe409045cc462e2f51"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.0/aws-nuke-v3.56.0-linux-arm7.tar.gz"
      sha256 "40025c3a9219288605b0b2fc5f7acea39a3e6f70242578a812ae130a82d00238"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.0/aws-nuke-v3.56.0-linux-arm64.tar.gz"
      sha256 "823ef64dacf15a01ff1f9f04c1a63d86b3f1dcf1cc68153d3ea4f6068ba01d7e"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
