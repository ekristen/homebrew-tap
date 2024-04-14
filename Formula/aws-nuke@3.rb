class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.42/aws-nuke-v3.0.0-beta.42-darwin-amd64.tar.gz"
      sha256 "31c41bdf8e975f328e03f0f1b1a4be656d3f8c6a223102d1186cd4a095b0d260"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.42/aws-nuke-v3.0.0-beta.42-darwin-arm64.tar.gz"
      sha256 "09045700359bede72e83f89babdf30f625cb2e5f190aedb0f260cd84b2450f0e"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.42/aws-nuke-v3.0.0-beta.42-linux-amd64.tar.gz"
      sha256 "cd9b899d01f548fae8756f11243fd7a1ebd12c8a0b229297f1586e1f4b71d35e"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.42/aws-nuke-v3.0.0-beta.42-linux-arm7.tar.gz"
      sha256 "a866bd88954ad778466614c7ee73f1b88b23d8280c47e62bf8cfb1ea67fa63a7"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.42/aws-nuke-v3.0.0-beta.42-linux-arm64.tar.gz"
      sha256 "46dd78f03e04e83032bd7492ce65a24030eb3a8b49909735e8df38dbaae279b0"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
