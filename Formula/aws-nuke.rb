class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.29.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.29.1/aws-nuke-v3.29.1-darwin-amd64.tar.gz"
      sha256 "4609782ec211ab293cd29039afd0426703948b9b7963b698e00cc6d62384ee6d"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.29.1/aws-nuke-v3.29.1-darwin-arm64.tar.gz"
      sha256 "e422004ea95c6dbf6caee649c0c9cecf1d95ff3377464cdaf33ca59f93abf89f"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.29.1/aws-nuke-v3.29.1-linux-amd64.tar.gz"
      sha256 "e15c282c40e75778662befb2c452e81627c97ddebefd066e2f2381ff69f3f4e5"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.29.1/aws-nuke-v3.29.1-linux-arm7.tar.gz"
      sha256 "8614710e147a4f090a491a09f993daacac63478a6fc33afcffcef08ebbf2dfb2"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.29.1/aws-nuke-v3.29.1-linux-arm64.tar.gz"
      sha256 "44f9d6f1ed5f2c1d1d6539f299099514c80633a6a7c2140a81d0d7df4d62af9c"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
