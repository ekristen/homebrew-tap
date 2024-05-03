class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.47/aws-nuke-v3.0.0-beta.47-darwin-amd64.tar.gz"
      sha256 "29db1819f77c02a5bb397184791fb40e4ea11a2f03394f638fa39617dcf765c8"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.47/aws-nuke-v3.0.0-beta.47-darwin-arm64.tar.gz"
      sha256 "3231182add3454ecda35ed16ad7531bc814ac6368ab0cd9e1d7d04199cabbd8c"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.47/aws-nuke-v3.0.0-beta.47-linux-amd64.tar.gz"
      sha256 "3cc6471e77e4d0d0eb5f23a9e48f2fff827045b4ef3a2567b7f1edac2171e143"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.47/aws-nuke-v3.0.0-beta.47-linux-arm7.tar.gz"
      sha256 "d6fe708e91c87effd72dd2949fd96d5b9c6526fea74160f6cf1ddd5473ba1b85"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.47/aws-nuke-v3.0.0-beta.47-linux-arm64.tar.gz"
      sha256 "92f31507f50a443f0e503e20529bad3fcf11de1ff211be92144a33b47eda20d2"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
