class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.50/aws-nuke-v3.0.0-beta.50-darwin-amd64.tar.gz"
      sha256 "2979a166fc7ca3b5486d43effb2abee3251ba1e246e774630b7cf5d6f56d8c25"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.50/aws-nuke-v3.0.0-beta.50-darwin-arm64.tar.gz"
      sha256 "fb22f7228dd2aa2823e4986bb900517f2a1cce1c28e332e594a859270f09a497"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.50/aws-nuke-v3.0.0-beta.50-linux-amd64.tar.gz"
      sha256 "259fc826559c6a3cbecad228b4dd6bc9c3df1585fe305bb089e6e3875ed474c3"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.50/aws-nuke-v3.0.0-beta.50-linux-arm7.tar.gz"
      sha256 "33f0192f83ebdffa66413753b035a7e1ec56954d7fc3ed60dee7bd51dbd4f909"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.50/aws-nuke-v3.0.0-beta.50-linux-arm64.tar.gz"
      sha256 "ede3e09680d68a642f4b31b662547309e0df45ca6ee40cb30662c0825e9b0405"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
