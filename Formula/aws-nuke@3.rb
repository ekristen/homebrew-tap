class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.60/aws-nuke-v3.0.0-beta.60-darwin-amd64.tar.gz"
      sha256 "14ff6ca04dc3d3b59f5b373c0ee50ba16c298166c959d9142e8fe480e6331ff6"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.60/aws-nuke-v3.0.0-beta.60-darwin-arm64.tar.gz"
      sha256 "2d4179a1503d5c43ef152956915711708b0392673790d346d4a6d355ff01647b"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.60/aws-nuke-v3.0.0-beta.60-linux-amd64.tar.gz"
      sha256 "5a8eff16cbcf21db4a77f58205c42a401bbea4aaa846381b6ccc8d70b1cd3c9a"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.60/aws-nuke-v3.0.0-beta.60-linux-arm7.tar.gz"
      sha256 "67effa653df7579a7088dbb4a4e5268dcc3b7ab54a096e01d1a5c60e2742d80e"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.60/aws-nuke-v3.0.0-beta.60-linux-arm64.tar.gz"
      sha256 "d9c0d751df52e2c1ee25acad8f28916c7afcb68afc64d1e10f524cfd10f2398d"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
