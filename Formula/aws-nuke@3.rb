class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.46/aws-nuke-v3.0.0-beta.46-darwin-amd64.tar.gz"
      sha256 "03a0446bc233539628b691074c5a06d44b92d3036de50ec8bdccc096b84fe0ae"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.46/aws-nuke-v3.0.0-beta.46-darwin-arm64.tar.gz"
      sha256 "2ca05c0c8f0b24fa0c23a993ddcc6426e371c6f1d3282e0152decfb246eb3c0a"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.46/aws-nuke-v3.0.0-beta.46-linux-amd64.tar.gz"
      sha256 "cee2c84b6323a745c6a32e6a34e947c9818e493291ed6411fcde94a64d22eb9a"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.46/aws-nuke-v3.0.0-beta.46-linux-arm7.tar.gz"
      sha256 "3823ae4101034535c774ae624946056afa8a5e11f4b797433975e34d8fdad830"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.46/aws-nuke-v3.0.0-beta.46-linux-arm64.tar.gz"
      sha256 "e7198266dce9137da602d07c90647d7a8e0da6da88891238a5d2f7e822b10abf"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
