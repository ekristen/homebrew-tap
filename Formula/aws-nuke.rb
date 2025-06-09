class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.56.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/archive/refs/tags/v3.56.1.tar.gz"
      sha256 "9efa902ba1ad227f79069ac2424b61db66607aa572cfc74730066b13f38a6250"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.1/aws-nuke-v3.56.1-darwin-arm64.tar.gz"
      sha256 "57fa1ea6af86c8dd48c6f0055c0380a1169f98267ac0e0b3411d46b8ba561ea2"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.1/aws-nuke-v3.56.1-linux-amd64.tar.gz"
      sha256 "cd95f6ef08ad493154ba64fa5a448165e8dd3b3df62770030881d41a67aa0d79"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.1/aws-nuke-v3.56.1-linux-arm7.tar.gz"
      sha256 "bb8756ac3003d445876ff3c17b1f8411c15c913b8e7eb7de9c3f298713df7a24"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.1/aws-nuke-v3.56.1-linux-arm64.tar.gz"
      sha256 "b99e9e69d8c534cc7efea09022290a485e094429eaf47583e3998679d77c8c8d"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
