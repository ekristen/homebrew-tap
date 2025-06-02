class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.56.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/archive/refs/tags/v3.56.0.tar.gz"
      sha256 "a65e27f8ae32e6b923c498fe49eeaf191fdc919b92a636f0cf843b27cca57dad"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.51.1/aws-nuke-v3.51.1-darwin-arm64.tar.gz"
      sha256 "89a262e09fed1ea7acf664cd259a906a765a42b07c6c0929b55b49b0085cc561"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.51.1/aws-nuke-v3.51.1-linux-amd64.tar.gz"
      sha256 "3cd3b60d2bed974b022d071c6e6f1d000a5b92aacf236dfb74e8e343e65e8a03"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.51.1/aws-nuke-v3.51.1-linux-arm7.tar.gz"
      sha256 "2911e8ef1abc9ac7f5090873b0798a9e014ad98d3771562d1fdfb04cc16f5a7b"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.51.1/aws-nuke-v3.51.1-linux-arm64.tar.gz"
      sha256 "73cf04ca4c500012d693ed65294eb53a217c668e2689470185907a938237e8dd"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
