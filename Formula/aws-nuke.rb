class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.39.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.39.0/aws-nuke-v3.39.0-darwin-amd64.tar.gz"
      sha256 "ad2acc47433e3ae545e1b40f3975f0c8a0bc6183944f98d7c55468764b8f56c2"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.39.0/aws-nuke-v3.39.0-darwin-arm64.tar.gz"
      sha256 "2b0e12dfcd6296691357a3fc2a09323905f2ea43b8cf00ddc7e336484bec4cd1"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.39.0/aws-nuke-v3.39.0-linux-amd64.tar.gz"
      sha256 "4e60a15a5e08ee180cab8fdb009ab7bb9874b3f62043f124908fbb9a72a3b92a"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.39.0/aws-nuke-v3.39.0-linux-arm7.tar.gz"
      sha256 "59f584f6dddb09020f713622d68205468f2f0436c0b5261e05e329489b3ffd40"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.39.0/aws-nuke-v3.39.0-linux-arm64.tar.gz"
      sha256 "2710ab50229e93fcbc65e62fd3e6011231721cf005e7813c88ff4d5443949a23"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
