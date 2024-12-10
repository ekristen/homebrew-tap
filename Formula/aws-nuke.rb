class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.35.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.2/aws-nuke-v3.35.2-darwin-amd64.tar.gz"
      sha256 "72c7a76b101da228e6954ac5456adb7ea34960b27203e99276cf49ecf3fdb53c"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.2/aws-nuke-v3.35.2-darwin-arm64.tar.gz"
      sha256 "d2b90a498a743c41f4a16949932817469f50b207eb3991073093b3133c8727c9"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.2/aws-nuke-v3.35.2-linux-amd64.tar.gz"
      sha256 "c43aee4a8009c6da48955100bf72c8c8dd4b75617b1d576b6ab43c8fc7d6d463"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.2/aws-nuke-v3.35.2-linux-arm7.tar.gz"
      sha256 "d668a66b78b4a610c8c0f608ac3c7ec7f36f92a4e8f0782ea060234bca07dc7f"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.2/aws-nuke-v3.35.2-linux-arm64.tar.gz"
      sha256 "0c945151546c65b9b3a49f392eae27593c4ba10ed3d6a9910ab50f9e5b2c07d8"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
