class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.40.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.40.0/aws-nuke-v3.40.0-darwin-amd64.tar.gz"
      sha256 "25722cddc55740e24b2679a69c8f24dda867af4553b13180cce2ddd4cea41cde"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.40.0/aws-nuke-v3.40.0-darwin-arm64.tar.gz"
      sha256 "f95cb3e938cd33dfb9a7629cb69795b11aa906a213c19e84435987c196a22116"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.40.0/aws-nuke-v3.40.0-linux-amd64.tar.gz"
      sha256 "e20a5e0477664af28eaac829e5ab6b6d514e4a8a1779403b3e74dc549545b1df"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.40.0/aws-nuke-v3.40.0-linux-arm7.tar.gz"
      sha256 "3ca9c4288ba356d3bfae54df0d14da25126ef87fd90ee7b1ad5c4c31695753d7"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.40.0/aws-nuke-v3.40.0-linux-arm64.tar.gz"
      sha256 "77b667303cdc9b943ccd6a58a5d841c20dfd81ded8fdeca97329c9ab77e3f2c4"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
