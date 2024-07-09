class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.3.2/aws-nuke-v3.3.2-darwin-amd64.tar.gz"
      sha256 "83a9292a91548ea1ae910d46f084520d46c892e3921ec1f78ea740afc6c667e9"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.3.2/aws-nuke-v3.3.2-darwin-arm64.tar.gz"
      sha256 "c43147d8499861cd2b1fdca0d299d285775964fcc334953355cf8c6e257ec44b"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.3.2/aws-nuke-v3.3.2-linux-amd64.tar.gz"
      sha256 "71e013b60018ada48c1021a83db276e8e704f34fda6eec8b6bc62d2b459cef29"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.3.2/aws-nuke-v3.3.2-linux-arm7.tar.gz"
      sha256 "b31eeac4e1adc0ef480a4c2aa9272c2d1d81c26bcccc4614143739cf02a2a7cb"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.3.2/aws-nuke-v3.3.2-linux-arm64.tar.gz"
      sha256 "fdb7e8ad12ee12182156be458c80b77a5f62bd47403488a33797e28e20410321"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
