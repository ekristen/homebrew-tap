class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.29.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.29.0/aws-nuke-v3.29.0-darwin-amd64.tar.gz"
      sha256 "f9438b60f28cfdac7bfdd3a0dbb81e5ea2da95adf4bbc72ccc45392567ef47e6"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.29.0/aws-nuke-v3.29.0-darwin-arm64.tar.gz"
      sha256 "15de989064cd49492a93d9c40609e6578992f6ff0b058f9584c57b76ad90388c"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.29.0/aws-nuke-v3.29.0-linux-amd64.tar.gz"
      sha256 "05e34d00c492a1f66d2cee8adb5bfcfa3fd3f0f20071ad01220d265941e0a5e9"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.29.0/aws-nuke-v3.29.0-linux-arm7.tar.gz"
      sha256 "32dda43842fbcfd98238e4b240b3cb3c944ff1c23a94373f1bada8f2d94d529a"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.29.0/aws-nuke-v3.29.0-linux-arm64.tar.gz"
      sha256 "e9783939b2ae0049038d92ec50732efc474ac215de0dd5f076e47f09903baab4"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
