class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.28.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.28.0/aws-nuke-v3.28.0-darwin-amd64.tar.gz"
      sha256 "8e61fe2c3bb03998290a136a26aed5f13a5aa7cb15aadc9f62cf4e58f73ca740"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.28.0/aws-nuke-v3.28.0-darwin-arm64.tar.gz"
      sha256 "d6a556d508bb39f06de075bccef10b13d9fe0d8d281966a05ef234a8e8d14bab"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.28.0/aws-nuke-v3.28.0-linux-amd64.tar.gz"
      sha256 "39cbdf4e2fac97d5887a223f0479a674114029d121953cdcdbe062f4f5d69d8d"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.28.0/aws-nuke-v3.28.0-linux-arm7.tar.gz"
      sha256 "e4477590abdb9b7273c9fd4f5406f6017e94179ece688f5088fe4da4bb1e087d"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.28.0/aws-nuke-v3.28.0-linux-arm64.tar.gz"
      sha256 "bbab0fc27c8960a1e79b6edb73a0d4c5dfabbb8247f0dd1c60b388b396e9788e"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
