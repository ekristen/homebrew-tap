class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.56.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/archive/refs/tags/v3.56.2.tar.gz"
      sha256 "d43ab2e77994e5c9ec19651d998624cb9e68408dc0fa31aab2e6e830910f6fde"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.2/aws-nuke-v3.56.2-darwin-arm64.tar.gz"
      sha256 "1034e9499a1c470da7592da5a4796cbb829041800b5ddd1d624f32b6713ad138"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.2/aws-nuke-v3.56.2-linux-amd64.tar.gz"
      sha256 "24d1926e74d72cdd6418e86158d744f418aa40d8c9ec23748deaec968da755cb"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.2/aws-nuke-v3.56.2-linux-arm7.tar.gz"
      sha256 "601360cf417318a1329aa5b566f74377f0c8939255ec6a5e177985cc058a970f"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.56.2/aws-nuke-v3.56.2-linux-arm64.tar.gz"
      sha256 "92a57e5a3b30dfb3b6a8491023ac89cb8fe1c1a5a4682e514ac37b66846432e2"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
