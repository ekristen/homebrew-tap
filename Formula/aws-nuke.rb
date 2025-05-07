class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.52.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.52.1/aws-nuke-v3.52.1-darwin-amd64.tar.gz"
      sha256 "7a54d12a15085cdf349d90db1182dff1f124e6cbda79f7bffcdc24b55d6f92bf"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.52.1/aws-nuke-v3.52.1-darwin-arm64.tar.gz"
      sha256 "ebb12e01469e6e65b70f8857beb560f136bd49c6866e90cb0e2daf59c8c3fc04"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.52.1/aws-nuke-v3.52.1-linux-amd64.tar.gz"
      sha256 "49de1a6554f241f123d1fa5e1d551ad9f33376275c87772e61e9cef962acdbd6"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.52.1/aws-nuke-v3.52.1-linux-arm7.tar.gz"
      sha256 "e146031954f1fbee44439a058cd6c3b5d13a1cd63dde40308d348c878f0db19e"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.52.1/aws-nuke-v3.52.1-linux-arm64.tar.gz"
      sha256 "6f630b14ca08c9ba27837fbd10f51174e1d5b0e419a15e961707067e4bef674b"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
