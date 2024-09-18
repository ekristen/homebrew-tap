class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.22.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.22.0/aws-nuke-v3.22.0-darwin-amd64.tar.gz"
      sha256 "5886deeee05d22eb971c0e74d6ff7242d249c3cc3d8b3f8adf7c5d5ce23aee24"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.22.0/aws-nuke-v3.22.0-darwin-arm64.tar.gz"
      sha256 "e2f7ea9892f6ca1719c67ad75d21123b14ace048903e65a75d2a432ce1d1a72a"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.22.0/aws-nuke-v3.22.0-linux-amd64.tar.gz"
      sha256 "ad08c4b608d736f64112f30aba3a2374fa91800493a2f2ca0eee4a727135c51c"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.22.0/aws-nuke-v3.22.0-linux-arm7.tar.gz"
      sha256 "b9da05d3d157af79113f33baa54383b6c49fa71d62d7f7a6d90129c046f42c42"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.22.0/aws-nuke-v3.22.0-linux-arm64.tar.gz"
      sha256 "a72fa303bf85ec418ec9c90225ee4c87b39d1cae5b0f36fa8fefe71becdb3800"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
