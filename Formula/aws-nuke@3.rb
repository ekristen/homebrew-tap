class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.23/aws-nuke-v3.0.0-beta.23-darwin-amd64.tar.gz"
      sha256 "0d82d5942fe579f61c13d36237ba9855eaaffdf90db940b62dda5ed3a404bb40"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.23/aws-nuke-v3.0.0-beta.23-darwin-arm64.tar.gz"
      sha256 "2386a3302c73f227824c6772eeff4217a9d07a30b7b90bfc6bbcba02771de805"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.23/aws-nuke-v3.0.0-beta.23-linux-amd64.tar.gz"
      sha256 "6cb275fc41897e37b20e5a1aa0bc0d31fc283c1091d6c77a71eb613a1e009cba"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.23/aws-nuke-v3.0.0-beta.23-linux-arm7.tar.gz"
      sha256 "61ad7453b6b8d936e0ee9958a159329476813d5ff331f7e730fec0d117a9fdcf"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.23/aws-nuke-v3.0.0-beta.23-linux-arm64.tar.gz"
      sha256 "ab1e233326184b75642686a122273e79fb26c9c9290408091e701d1076bbfb40"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
