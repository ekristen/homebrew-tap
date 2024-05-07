class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.49/aws-nuke-v3.0.0-beta.49-darwin-amd64.tar.gz"
      sha256 "cccac6800871a8bd7986e450497a0c4596595bb3b8f7ab70affbe0e54688d0c8"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.49/aws-nuke-v3.0.0-beta.49-darwin-arm64.tar.gz"
      sha256 "675f2f39677cc8012f605a9d8cc168ba66839f89a6ee1724ac70fe63523a2f7b"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.49/aws-nuke-v3.0.0-beta.49-linux-amd64.tar.gz"
      sha256 "9f3c8e3a30cd8f4a50c4c7cb3746ccdf3a65a137c566f37bef8dec58ccfdc990"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.49/aws-nuke-v3.0.0-beta.49-linux-arm7.tar.gz"
      sha256 "b32888d41dac9d172d7a0447f09bcfa46e618c8b3201b767063cbe48b5557891"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.49/aws-nuke-v3.0.0-beta.49-linux-arm64.tar.gz"
      sha256 "e717bf50d0e0737ab421ea2dac08cec301fc8c30137dab197f2fddf7ed207ef3"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
