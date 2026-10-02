class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.68.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/archive/refs/tags/v3.68.3.tar.gz"
      sha256 "2f06b307aa1addccf9231f0fd1f394c63507a8c7438e8113a91386066be0d6aa"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.68.3/aws-nuke-v3.68.3-darwin-arm64.tar.gz"
      sha256 "3fbc97250dfe7772f75970c8da97e596b279c1db61353ab82a93cbfa1f32c2b1"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.68.3/aws-nuke-v3.68.3-linux-amd64.tar.gz"
      sha256 "ec43c22b2a433a3f6da87006b281451d8cd5bab5eb25047f7a671dfbeebc15a4"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.68.3/aws-nuke-v3.68.3-linux-arm7.tar.gz"
      sha256 "923d023739acb2c9a7848faa13aa74ca0a739876a366cda3741b2dc553a2ee81"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.68.3/aws-nuke-v3.68.3-linux-arm64.tar.gz"
      sha256 "fb00dd0649a112be4ce1ce2802f14c0177e2a00887b3ab57f7d978e3d69f4b12"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
