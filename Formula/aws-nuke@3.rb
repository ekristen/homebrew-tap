class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.45/aws-nuke-v3.0.0-beta.45-darwin-amd64.tar.gz"
      sha256 "26b82bf213b3862061f79c53c056c80380854ff3df9c2df17a6fb5eff9033a9c"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.45/aws-nuke-v3.0.0-beta.45-darwin-arm64.tar.gz"
      sha256 "34d9ae8baca162ed78b039d55be82127ab2f67264e8a78e8afd707b489425481"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.45/aws-nuke-v3.0.0-beta.45-linux-amd64.tar.gz"
      sha256 "81b61ec8c3f5f2218d8df6e1e7d6aa671c5997ff76e8557736829eb38c361068"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.45/aws-nuke-v3.0.0-beta.45-linux-arm7.tar.gz"
      sha256 "84f351b9ae6bdb1b6a035280415a755a4407f362cb2f0ca238dc7b4fe8aa192e"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.45/aws-nuke-v3.0.0-beta.45-linux-arm64.tar.gz"
      sha256 "9fd26d0d57512b0a1d6048fd40c5137eb487fb8c2379f6622039b87c41c9211a"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
