class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.48/aws-nuke-v3.0.0-beta.48-darwin-amd64.tar.gz"
      sha256 "13e7725b56536648ace373d0b09cf9cea9f50a7c0ca0ebfb9e99f60e0b70ce70"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.48/aws-nuke-v3.0.0-beta.48-darwin-arm64.tar.gz"
      sha256 "ed9bac09ba58bf6f33bc24d51a524056e10d77277b86df71bc3b1abf7d4ec3f1"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.48/aws-nuke-v3.0.0-beta.48-linux-amd64.tar.gz"
      sha256 "e2911a06eba7d02791399be450fc20e5f8235639af812067f1db9560d6d898ab"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.48/aws-nuke-v3.0.0-beta.48-linux-arm7.tar.gz"
      sha256 "6b5ee919a9f39722fba54fd8d9ab7d5417344772443d8b5e29db087d56d6cdad"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.48/aws-nuke-v3.0.0-beta.48-linux-arm64.tar.gz"
      sha256 "087043b022dde0bcd894d6129b52e03abcc9ae07e322f0aa431f46c3dfcbec46"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
