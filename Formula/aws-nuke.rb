class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.24.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.24.0/aws-nuke-v3.24.0-darwin-amd64.tar.gz"
      sha256 "8943ce0d18e2be6595228f400129a3ec6a9b5ee3e17027f494d12f261770c099"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.24.0/aws-nuke-v3.24.0-darwin-arm64.tar.gz"
      sha256 "546bad9f5a26b4545339e8f5cce18bae82952a2a65574d961ee944475c9059df"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.24.0/aws-nuke-v3.24.0-linux-amd64.tar.gz"
      sha256 "121b177b4c0de945e02e03b05a6804fed6793ae2618774d441af1ae7b317db07"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.24.0/aws-nuke-v3.24.0-linux-arm7.tar.gz"
      sha256 "8ae91e5799f57e298e548224fb2614f29536a83e59f4b01cb453e29e5c2b4e12"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.24.0/aws-nuke-v3.24.0-linux-arm64.tar.gz"
      sha256 "0b44fb35961bab0c2b34e5abc527c9d1d9486c73c633f886fa2fd12bb956b6db"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
