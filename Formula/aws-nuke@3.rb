class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.58/aws-nuke-v3.0.0-beta.58-darwin-amd64.tar.gz"
      sha256 "88f28ea768b70f1c872dfd6db6af457a653d111ac9fd33c289dab82f6b553555"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.58/aws-nuke-v3.0.0-beta.58-darwin-arm64.tar.gz"
      sha256 "3bcdb01178ae0bbe739505f665aa0a7338ad15cf62af53c854a1fe099de7f0cc"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.58/aws-nuke-v3.0.0-beta.58-linux-amd64.tar.gz"
      sha256 "188e05422792c5d3f2ebbb000e9178f3cc52b0857c12f57baa53059897310e5e"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.58/aws-nuke-v3.0.0-beta.58-linux-arm7.tar.gz"
      sha256 "27568400f8cb2f131cb21faf9ff249840ee0ff1340d45b3d7fba344c85bea118"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.58/aws-nuke-v3.0.0-beta.58-linux-arm64.tar.gz"
      sha256 "01557406a90c76f22ff797af3a4e1145aa5c59890c76a6001e7e8be44fceb173"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
