class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.41/aws-nuke-v3.0.0-beta.41-darwin-amd64.tar.gz"
      sha256 "a53831fc0e9ffe616abcf6cdff549cb12e0e38d9a5e996e98954981475a161f1"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.41/aws-nuke-v3.0.0-beta.41-darwin-arm64.tar.gz"
      sha256 "abb8074c5a7d5a30a7dc053b5db19244625a096bfb96e47b00aa4b55f751f507"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.41/aws-nuke-v3.0.0-beta.41-linux-amd64.tar.gz"
      sha256 "67a03f016af57f37d82d036a5680283ead8a377234ec62b572039687eabb5bb4"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.41/aws-nuke-v3.0.0-beta.41-linux-arm7.tar.gz"
      sha256 "3ccd46e7fcf8b8b265f419f3742cc0d512c9bb5cd21785378dc3c732516f7cc5"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.41/aws-nuke-v3.0.0-beta.41-linux-arm64.tar.gz"
      sha256 "59a622c4769608120d1f1448e50f0099e00d3cc03e4b0fde43dc8f82b23bf22b"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
