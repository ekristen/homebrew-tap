class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.44.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.44.0/aws-nuke-v3.44.0-darwin-amd64.tar.gz"
      sha256 "95232680ed42e6ee610658542305cc69983ea93ebc030d1e4014794220c469c1"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.44.0/aws-nuke-v3.44.0-darwin-arm64.tar.gz"
      sha256 "2d2177f73deda414ee6a66c33a5125cbcf62b0dbeba5bc85574c0370c7b1db55"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.44.0/aws-nuke-v3.44.0-linux-amd64.tar.gz"
      sha256 "57a3dbb81ccde4bbfb4f850422d92e6d4392dcf76af84ea317134ab6097e0999"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.44.0/aws-nuke-v3.44.0-linux-arm7.tar.gz"
      sha256 "a50bb733459646d8267aceeef71f7d15d7a89c2803f6bd414a1f051791ffcacd"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.44.0/aws-nuke-v3.44.0-linux-arm64.tar.gz"
      sha256 "b57d6971ef4f49b34f0eb9cc193c90302ada4e6eeb82cf5c8ab8137d7a4ad3a5"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
