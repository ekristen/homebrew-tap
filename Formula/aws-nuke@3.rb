class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.32/aws-nuke-v3.0.0-beta.32-darwin-amd64.tar.gz"
      sha256 "79f8b16bfd4d24d252b2f0ab9320d20a3545c9bcdd97d8f09e92021285a264eb"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.32/aws-nuke-v3.0.0-beta.32-darwin-arm64.tar.gz"
      sha256 "13c8d3aa73b4225d4cd5478cb1bcc974e0ebcf57f6b758f21ee842e7ce5d237a"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.32/aws-nuke-v3.0.0-beta.32-linux-amd64.tar.gz"
      sha256 "8f7a0f54cd81cfaa03bff34d046716ea9ec5ccd20f6dde7c4b9623af756e39d1"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.32/aws-nuke-v3.0.0-beta.32-linux-arm7.tar.gz"
      sha256 "e25e00fa9231beeca63afb5f2d336f1b25d05ab55a290b7796a47544957ebfd1"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.32/aws-nuke-v3.0.0-beta.32-linux-arm64.tar.gz"
      sha256 "4d6b0afb953b1c1e37dfb4c8bd14eff2cddaa9d17ba8a0194a2a0b792e23c8d6"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
