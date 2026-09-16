class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.67.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/archive/refs/tags/v3.67.0.tar.gz"
      sha256 "69ef6d51aba9d1b875c2adae35e321e4030bf098c4bedc8c10822a99af8fc95b"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.67.0/aws-nuke-v3.67.0-darwin-arm64.tar.gz"
      sha256 "a83f76c96a74d6b68fd49ebf624b479f82d48e767f1c1c177d7b857df2b630fc"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.67.0/aws-nuke-v3.67.0-linux-amd64.tar.gz"
      sha256 "cf4e048022bd971b874c8acebc82a4eb2a0cc114c2bd8d666c5b67891a0c46cb"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.67.0/aws-nuke-v3.67.0-linux-arm7.tar.gz"
      sha256 "9feb4def5db69ea018f733a9bf4b111eb9de3c8437ddf97ed582bd94267ab592"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.67.0/aws-nuke-v3.67.0-linux-arm64.tar.gz"
      sha256 "58a13292356215f2093c9e5dc0bbf858ecf370d8df679433f9849b9f6462ea72"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
