class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.59/aws-nuke-v3.0.0-beta.59-darwin-amd64.tar.gz"
      sha256 "94d3fd10be072437181cb2c5608fe566bea69eebddcb80aeca7eba7c964e2c43"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.59/aws-nuke-v3.0.0-beta.59-darwin-arm64.tar.gz"
      sha256 "53efa43e4dd2ba08c7048f1637a8f7fd59fcb543eee0b9800de61b31d29abbd4"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.59/aws-nuke-v3.0.0-beta.59-linux-amd64.tar.gz"
      sha256 "54265c0b46798a96019fc0aa1261d9142ebe373780f55d1a9900709fd8c27ddf"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.59/aws-nuke-v3.0.0-beta.59-linux-arm7.tar.gz"
      sha256 "ed08b2b74ff2ea6a19e7410059540544f5e9d39f3fba773d58fe24f0ebad83e7"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.59/aws-nuke-v3.0.0-beta.59-linux-arm64.tar.gz"
      sha256 "377084307cbf30213fd4388a309a9d041834360db653c2ab5fe1ba0fc869546f"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
