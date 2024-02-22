class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "v3.0.0-beta.19"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.19/aws-nuke-v3.0.0-beta.19-darwin-amd64.tar.gz"
      sha256 "217e724e55042d6cb5d076eaf94fabba489d24fbbd16c600cbd4cc91a7121b3d"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.19/aws-nuke-v3.0.0-beta.19-darwin-arm64.tar.gz"
      sha256 "abd746f0f7a52ceadc5880968dcf6b6d4b4e262234270f775603cb9b0c851446"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.19/aws-nuke-v3.0.0-beta.19-linux-amd64.tar.gz"
      sha256 "5e682c983f4f28c2c1579b76741e8c02ddf1362db1ea963fbf9b40f40f738063"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.19/aws-nuke-v3.0.0-beta.19-linux-arm7.tar.gz"
      sha256 "af02392a09fbb3915676c4deb1375856d49279b8dcb6ccfd85adfae0003700e4"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.19/aws-nuke-v3.0.0-beta.19-linux-arm64.tar.gz"
      sha256 "252641dbd1bb5f453a0ac77fbd5ba7520874d07f210521eb1a6d1b56519d911c"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
