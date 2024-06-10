class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.61/aws-nuke-v3.0.0-beta.61-darwin-amd64.tar.gz"
      sha256 "d065e75726164a63f6a4251390866a302cad3c7447136cce2ca5b373a72d5e13"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.61/aws-nuke-v3.0.0-beta.61-darwin-arm64.tar.gz"
      sha256 "a7b909e733bce6c32a8b71958e2bfe650559e8c0c4619a22b5445bf0f55a9323"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.61/aws-nuke-v3.0.0-beta.61-linux-amd64.tar.gz"
      sha256 "2fba26b716fc0995b94a24803ecb49b687cdea4b328eddb0a837915df9cf06e7"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.61/aws-nuke-v3.0.0-beta.61-linux-arm7.tar.gz"
      sha256 "ab6779a8ead5d6537860fd1aa9c5b6a72912c94b230b95ae6a9ca793d1d2ba46"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.61/aws-nuke-v3.0.0-beta.61-linux-arm64.tar.gz"
      sha256 "94536d0a5dfe13ffbccd3c0daba900eeefc96c50dae2ca5b2206afc2178ceec6"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
