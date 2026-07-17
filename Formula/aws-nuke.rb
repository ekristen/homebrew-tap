class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.66.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/archive/refs/tags/v3.66.0.tar.gz"
      sha256 "3071dd7f1d61f42ca065af87aa675ada8ec11abfac08d135058845635561b676"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.66.0/aws-nuke-v3.66.0-darwin-arm64.tar.gz"
      sha256 "a940a3bb50182965837a2d8b57a54033f95c592519f80d01f45b9b7d1f450f8a"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.66.0/aws-nuke-v3.66.0-linux-amd64.tar.gz"
      sha256 "65a361f164cc5075b7ecd947b355cd6ae19680f9eea32d52cba441d4bf2677f9"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.66.0/aws-nuke-v3.66.0-linux-arm7.tar.gz"
      sha256 "f3547a46420a5b186c039f889cc47743ef89faa5a3c7ff34571d8f50d3599c67"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.66.0/aws-nuke-v3.66.0-linux-arm64.tar.gz"
      sha256 "de6a23b2cd06af8caaa85603531a9229bdc601cbf84557d50cb8269ec1652a4c"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
