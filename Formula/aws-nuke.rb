class AwsNuke < Formula
  desc "Remove all the resources from an AWS account."
  homepage "https://ekristen.github.io/aws-nuke/"
  version "2.26.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v2.26.6/aws-nuke-v2.26.6-darwin-amd64.tar.gz"
      sha256 "014acd0de7977dce8c416a271444a78eb22115031955e7b9ff1b4773e29718c0"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v2.26.6/aws-nuke-v2.26.6-darwin-arm64.tar.gz"
      sha256 "3711dc26339ede5ca2145bd9a126beeaae3365c48a6d3dd7e31425c685972cb6"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v2.26.6/aws-nuke-v2.26.6-linux-amd64.tar.gz"
      sha256 "9e08cecd901ae5689242189bdb3d0e77bee899f53d1011e42bd6863fc963d047"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v2.26.6/aws-nuke-v2.26.6-linux-arm7.tar.gz"
      sha256 "696ccca0ec03dfac77166652feb724dc2ea23d4549c50d94a138210e23af0200"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v2.26.6/aws-nuke-v2.26.6-linux-arm64.tar.gz"
      sha256 "3b4a111b60a2de18ae4bb2483b7e164456d622cf518b4818e3aee00175bb465a"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
