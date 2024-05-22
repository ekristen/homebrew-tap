class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.54/aws-nuke-v3.0.0-beta.54-darwin-amd64.tar.gz"
      sha256 "c075e17967b8b76f2fd0be7f0083cf7e46dc0f5d2dd1e6fad5c34480a7e9ba20"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.54/aws-nuke-v3.0.0-beta.54-darwin-arm64.tar.gz"
      sha256 "dcb62df5d89561618bb8fb879ec504867acad6a60f603e7007172ef29120f9d4"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.54/aws-nuke-v3.0.0-beta.54-linux-amd64.tar.gz"
      sha256 "deb2cce4e99b2b3a8120c212f38fe99379d6260ea16b5b7270d071fa9242c737"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.54/aws-nuke-v3.0.0-beta.54-linux-arm7.tar.gz"
      sha256 "1d1ad2981d828a0aff098b89187dcf4ad8a0ef9a06b1d5fb1916edd2dff4b585"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.54/aws-nuke-v3.0.0-beta.54-linux-arm64.tar.gz"
      sha256 "2e56ae6ea4b17287785c0e36045d089d5ac3d21335363e2fb156578eed1a26af"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
