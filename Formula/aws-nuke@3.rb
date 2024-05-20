class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.53/aws-nuke-v3.0.0-beta.53-darwin-amd64.tar.gz"
      sha256 "40e6346478e02c3801184339e204df8d6aca61f1ac77e4bae416d3bb7a2f034b"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.53/aws-nuke-v3.0.0-beta.53-darwin-arm64.tar.gz"
      sha256 "8a2c68964f1e4d94788b65c3c948eb60c535ce04ea0b6f492c43042c94c8b3b6"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.53/aws-nuke-v3.0.0-beta.53-linux-amd64.tar.gz"
      sha256 "52883262be3fd77a4db967a12f61108696ca087e7c6ce27e7cabfb6a347d4bfc"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.53/aws-nuke-v3.0.0-beta.53-linux-arm7.tar.gz"
      sha256 "1735bf8ca33df61fc97c35f3c42398e8bf490e48720a340440cb5fb887b612e5"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.53/aws-nuke-v3.0.0-beta.53-linux-arm64.tar.gz"
      sha256 "b2035cc765fc917579bb8e34941efa422b9bb79e4568905da9f55ec94a72b8f0"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
