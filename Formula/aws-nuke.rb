class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.42.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.42.0/aws-nuke-v3.42.0-darwin-amd64.tar.gz"
      sha256 "41ddd4c3101df7e7fc4ca696a0b988e5c6e27b9675c9098d08eeb13164f650e3"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.42.0/aws-nuke-v3.42.0-darwin-arm64.tar.gz"
      sha256 "142c48a3b5915129043cae27024f7b060c9d9cef902f4c3e8c753f517060f495"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.42.0/aws-nuke-v3.42.0-linux-amd64.tar.gz"
      sha256 "088537ffe92ffcfea54b534514cd47fa468b9e6ee237c0890dfd2c30af73332f"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.42.0/aws-nuke-v3.42.0-linux-arm7.tar.gz"
      sha256 "a2854f5350e103f0e47a795443e840d356c369e41a49c498b556248dbcacb453"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.42.0/aws-nuke-v3.42.0-linux-arm64.tar.gz"
      sha256 "00843e021f6b2563415e97cbf2e4b679a7af21e6e81745cac46f8f184ba12773"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
