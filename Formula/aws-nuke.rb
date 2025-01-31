class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.46.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.46.1/aws-nuke-v3.46.1-darwin-amd64.tar.gz"
      sha256 "760eb3abf1ca5c90a96369ddedb45467bff8ba64f3ae5517b0f50a62c086edf3"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.46.1/aws-nuke-v3.46.1-darwin-arm64.tar.gz"
      sha256 "dbc975b67dbef700c1c7e8f459913affbb85956730b6635363cd0feaed9ca91d"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.46.1/aws-nuke-v3.46.1-linux-amd64.tar.gz"
      sha256 "dd480f763c27012273cd6027628f2133b3ed93d7fed99b6db728f0db80a66ae4"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.46.1/aws-nuke-v3.46.1-linux-arm7.tar.gz"
      sha256 "f100d51102a755a401d21b9ab2368410feb9271e5b357abdc6418c60f7ef7799"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.46.1/aws-nuke-v3.46.1-linux-arm64.tar.gz"
      sha256 "6415a2feabebb212cdb94525411935b41e32ce8fcaed7f78e010df686620b644"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
