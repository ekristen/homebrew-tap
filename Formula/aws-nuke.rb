class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.26.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.26.0/aws-nuke-v3.26.0-darwin-amd64.tar.gz"
      sha256 "7329748f5ff56b7a731bc9796ff45e8f0d814a83702344e70262e33080cfa9a1"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.26.0/aws-nuke-v3.26.0-darwin-arm64.tar.gz"
      sha256 "fcffdfac2848bf6d9f98f34d30796846f7b5d554e7d9a4fd258b6a0c13366680"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.26.0/aws-nuke-v3.26.0-linux-amd64.tar.gz"
      sha256 "68393e460bb1d28d260b2e65b30ee6cdaf03fd78a336a86ddb267f492cb96a2a"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.26.0/aws-nuke-v3.26.0-linux-arm7.tar.gz"
      sha256 "713e565c2fb994c5c487892fe156619dda61056b747e163298e8b913e698b201"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.26.0/aws-nuke-v3.26.0-linux-arm64.tar.gz"
      sha256 "a67e6e5b95bc5c3a9e00cd6f62fe72d37bf35fbd1b0396ce5951b7aa34e07500"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
