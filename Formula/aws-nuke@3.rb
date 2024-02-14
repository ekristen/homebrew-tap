class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account."
  homepage "https://ekristen.github.io/aws-nuke/"
  version "v3.0.0-beta.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.16/aws-nuke-v3.0.0-beta.16-darwin-amd64.tar.gz"
      sha256 "f1bc76ee3bcf27e20106a62fa1a05659200f1a5350108fdb0fce8d146a29d7ed"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.16/aws-nuke-v3.0.0-beta.16-darwin-arm64.tar.gz"
      sha256 "8a3adca5993c0d9a88a1c5314dd1569f6d2802178fa75505a14f49be11e0fff7"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.16/aws-nuke-v3.0.0-beta.16-linux-amd64.tar.gz"
      sha256 "0fee3700bccb38cd44f2a2a1736a7df1024611392980cb875ecf1673a21bd3ac"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.16/aws-nuke-v3.0.0-beta.16-linux-arm7.tar.gz"
      sha256 "11c7491a6a2cb6f1965dd1a5a59cb4a0b3fb4f11f7b775a82a04872b375e77eb"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.16/aws-nuke-v3.0.0-beta.16-linux-arm64.tar.gz"
      sha256 "2b710fb6e586dda402d0391f77134f64151144ec832fb13a37a8f99c3597aaf5"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
