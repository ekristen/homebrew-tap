class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.63.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/archive/refs/tags/v3.63.4.tar.gz"
      sha256 "83e8f1ac805ce69f796b2523b00635eb3268f9dbb99ec867238bc656ad2e569f"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.63.4/aws-nuke-v3.63.4-darwin-arm64.tar.gz"
      sha256 "be0d312a181827e4db603461bbf9268f289ab1daf24b16d0602b05f5eb7dc42e"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.63.4/aws-nuke-v3.63.4-linux-amd64.tar.gz"
      sha256 "92f1a16e7e76c15399520e9ebba669b1fa4ea781460ebd6e32eb298df03c9da2"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.63.4/aws-nuke-v3.63.4-linux-arm7.tar.gz"
      sha256 "d1c87cef641c591599b00a82b496753178b267ece1cf12d933ea0ecb14b04bf6"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.63.4/aws-nuke-v3.63.4-linux-arm64.tar.gz"
      sha256 "e46a84018b1d94286c4d03d20a70b1f1d1ea17455517b09fe9c7298e84fd2601"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
