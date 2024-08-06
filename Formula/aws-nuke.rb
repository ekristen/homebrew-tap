class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.9.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.9.1/aws-nuke-v3.9.1-darwin-amd64.tar.gz"
      sha256 "c0cf6f44df67e107a70eb4ae26877cf408a564e9cb7fe2b75a4d971d2906fd25"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.9.1/aws-nuke-v3.9.1-darwin-arm64.tar.gz"
      sha256 "370066673ba6f2e586b9e3765a59671d2ea7bd5e6337a4572f55927c57994b65"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.9.1/aws-nuke-v3.9.1-linux-amd64.tar.gz"
      sha256 "a37ab1eafc27f24f21b8d3a27aa1570857d4fec7100b0a0190ca8938d762774b"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.9.1/aws-nuke-v3.9.1-linux-arm7.tar.gz"
      sha256 "bcb30ee92fed3699a20656f57530fb0867cb99642b76b699f1cd7f3d74b06143"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.9.1/aws-nuke-v3.9.1-linux-arm64.tar.gz"
      sha256 "d207bab591bd1fdb5344e9fe7698092ffa343bf669496258463e522de95544bc"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
