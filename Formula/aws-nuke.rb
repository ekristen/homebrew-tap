class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.36.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.36.0/aws-nuke-v3.36.0-darwin-amd64.tar.gz"
      sha256 "852e9ebc0f43ca1d518cb0218e50b39e1fd236f48ff2973a3eaf14f0f80209a1"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.36.0/aws-nuke-v3.36.0-darwin-arm64.tar.gz"
      sha256 "ef7c46e65a3fe39cd1a969d62b5fb3a0ff4a5bd3288b8f0227ce8d7fa9d86e3d"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.36.0/aws-nuke-v3.36.0-linux-amd64.tar.gz"
      sha256 "de0ce499d99b78e939b208a0c336e8cd42eec19dd0f0121c81a61d9bb4bc64c0"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.36.0/aws-nuke-v3.36.0-linux-arm7.tar.gz"
      sha256 "ed0b4e2e29e4246f466c83dd072a88c6c2b4c760ce7fd3cab9e44d7aa978400d"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.36.0/aws-nuke-v3.36.0-linux-arm64.tar.gz"
      sha256 "a51529d2e98e588f281a0811927249b348cf022131f32c4e7d425c13f7f32c5f"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
