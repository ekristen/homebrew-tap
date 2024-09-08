class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.17.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.17.3/aws-nuke-v3.17.3-darwin-amd64.tar.gz"
      sha256 "c3ecfe611994011e823513d8eb05e7d1358e462abcef812d0e91fd42ec74760e"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.17.3/aws-nuke-v3.17.3-darwin-arm64.tar.gz"
      sha256 "9f01b00028e72edfdcba810536395934ce360d2c8285ec74985a66067616aad9"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.17.3/aws-nuke-v3.17.3-linux-amd64.tar.gz"
      sha256 "b0e808cdc3e5105b51570844b20e7bb3c45002b25676d17a465256a63a37f837"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.17.3/aws-nuke-v3.17.3-linux-arm7.tar.gz"
      sha256 "36a5934ee8318bdeb952d7ab9fc81dc63f3b188b5e545fcf9ea7244a4404f773"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.17.3/aws-nuke-v3.17.3-linux-arm64.tar.gz"
      sha256 "867ec601400f4537e976f7d2a5cc146714bfe13dcec8aef71c9bc7de744c9fb2"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
