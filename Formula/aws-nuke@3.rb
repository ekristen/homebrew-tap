class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.38/aws-nuke-v3.0.0-beta.38-darwin-amd64.tar.gz"
      sha256 "3ee77a1388c57028350f86beaae0bc86552e54bac7718d4890a4f9b1ac635fc9"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.38/aws-nuke-v3.0.0-beta.38-darwin-arm64.tar.gz"
      sha256 "a1cf1f611845db74c51c6e64fc51023ab9e4cca0e33b4460d38fc048a18382ea"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.38/aws-nuke-v3.0.0-beta.38-linux-amd64.tar.gz"
      sha256 "6685dcf3b63c121de9a704afe73cdcde6a1b7c6808c012141e8ae53217d73c24"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.38/aws-nuke-v3.0.0-beta.38-linux-arm7.tar.gz"
      sha256 "4ae82c907730e83319dfa2037be25061d6c7b03a88ad29afaaabeb50f1663663"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.38/aws-nuke-v3.0.0-beta.38-linux-arm64.tar.gz"
      sha256 "f758fc7d20adb8f0f19750eff5eb1aeb48daeb013edd9991093ce37787f5fd32"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
