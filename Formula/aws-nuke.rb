class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.5.1/aws-nuke-v3.5.1-darwin-amd64.tar.gz"
      sha256 "01287ae021690213174f0f377e75b091d3701bebe32a99aa24ac3233eed72ded"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.5.1/aws-nuke-v3.5.1-darwin-arm64.tar.gz"
      sha256 "2f20d7ab7806498ce3e40f22552fb30fcff36399c12c711a85efe9919cbb70c4"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.5.1/aws-nuke-v3.5.1-linux-amd64.tar.gz"
      sha256 "3c9c7dff24e80d6193ffb9d214ccfdb38eff236998f81d6750d4ad30398f0aa9"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.5.1/aws-nuke-v3.5.1-linux-arm7.tar.gz"
      sha256 "bdbcfd24751be95523de836d36d71cda1e0e8b3d4097ca19265150d1be88a210"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.5.1/aws-nuke-v3.5.1-linux-arm64.tar.gz"
      sha256 "29747fa6dbdd2c9b1c7d1de34d3056e74ad5ad7891c6c3876e9930f704049f45"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
