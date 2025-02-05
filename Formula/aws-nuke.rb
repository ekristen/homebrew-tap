class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.47.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.47.1/aws-nuke-v3.47.1-darwin-amd64.tar.gz"
      sha256 "31a46a780861df2532a91768eff45e016ec81ef9f67ae329c8c6efb2c7a27095"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.47.1/aws-nuke-v3.47.1-darwin-arm64.tar.gz"
      sha256 "ca8986dcc0bfd64bbd2a31d4b89eade917868d62dd490a8801941af1a56d08b3"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.47.1/aws-nuke-v3.47.1-linux-amd64.tar.gz"
      sha256 "61b0778134972b638649bb3e29da8e809ad66c3e9f0ef2a4a330a9b03255ecbc"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.47.1/aws-nuke-v3.47.1-linux-arm7.tar.gz"
      sha256 "554683715330f376fa02de2774945d6d222604da5d55712884a66560a77b1feb"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.47.1/aws-nuke-v3.47.1-linux-arm64.tar.gz"
      sha256 "584cab7d06422a47e9d54f52f8ae2469d5fbad57354d4df8b5b60f41011c190c"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
