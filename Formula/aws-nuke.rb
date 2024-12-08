class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.35.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.0/aws-nuke-v3.35.0-darwin-amd64.tar.gz"
      sha256 "671004591dd262e39ef6edc01d13c43134ce874d9c1f1eb50744b6b450eccbc1"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.0/aws-nuke-v3.35.0-darwin-arm64.tar.gz"
      sha256 "8ec41fa54c811f380a0393ad7767f42ce7654011f64dd12b417bce23faeeffb5"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.0/aws-nuke-v3.35.0-linux-amd64.tar.gz"
      sha256 "79b43ca30d682da7849d49bd5ac8409c5356e7b5548f4746870c7572adb0bc34"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.0/aws-nuke-v3.35.0-linux-arm7.tar.gz"
      sha256 "5caa082aff9d5dfdc625e4741f2c05fdbd31f9ae9c26f27dcf9571ab2a50465b"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.0/aws-nuke-v3.35.0-linux-arm64.tar.gz"
      sha256 "25a70babd71ba41c445fa133362f5497f2ca27d1da8a3f0a68489ea75c3b2968"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
