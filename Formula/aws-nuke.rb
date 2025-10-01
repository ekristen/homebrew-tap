class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.60.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/archive/refs/tags/v3.60.0.tar.gz"
      sha256 "f68f8847c293aa183a96cab7a6a90f893fa37a173d9375694c757ca51c6ef5ff"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.60.0/aws-nuke-v3.60.0-darwin-arm64.tar.gz"
      sha256 "cc7569b4feaadd94a3924ff1d98b4d4ca9dff80cc0b3b7d0c06c1bb43c8b6549"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.60.0/aws-nuke-v3.60.0-linux-amd64.tar.gz"
      sha256 "13c883999bcf3fbd1cfc36a4f45059d3a7ccdb88283285a1b79d06872184ac68"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.60.0/aws-nuke-v3.60.0-linux-arm7.tar.gz"
      sha256 "31ba724c79253ab7a60b0995007a85b962a4324376512f57a2d7160197cb8d15"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.60.0/aws-nuke-v3.60.0-linux-arm64.tar.gz"
      sha256 "aa0d1230e99d0abc794e30f8cbf22299c001afbee55ab9cbdfd2e789f787f02f"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
