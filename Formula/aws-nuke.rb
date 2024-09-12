class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.20.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.20.0/aws-nuke-v3.20.0-darwin-amd64.tar.gz"
      sha256 "97922df46fa917eb1400df9b0fdeeb122a0a774a30a18eb3a76a5f72513526b5"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.20.0/aws-nuke-v3.20.0-darwin-arm64.tar.gz"
      sha256 "347f14e91eeba68fd1c29ae15b23524f96ffb0fbe1bdc978329938d18528026c"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.20.0/aws-nuke-v3.20.0-linux-amd64.tar.gz"
      sha256 "7692a0c3e0465f1512b886b6742702e356320ae95541cd116ab3839a672ea1fd"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.20.0/aws-nuke-v3.20.0-linux-arm7.tar.gz"
      sha256 "172355535c41b5fcf53517759099002c596f07611f0ee7024c5d95fa37a0c895"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.20.0/aws-nuke-v3.20.0-linux-arm64.tar.gz"
      sha256 "2af3e17297f625ac1e3a289eb05bd4afa6d7b4e348990b48b2da3e6e4706e79e"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
