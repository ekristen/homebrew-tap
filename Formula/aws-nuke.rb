class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.2.2/aws-nuke-v3.2.2-darwin-amd64.tar.gz"
      sha256 "becf8ab515a075afc6eb6121a72547a95718ede8a3fae8710ee2b086a1ef8caa"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.2.2/aws-nuke-v3.2.2-darwin-arm64.tar.gz"
      sha256 "6e7fa73559b578ca2e73d181ef0115aba1b937e1d070266ac5be8049cf20800b"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.2.2/aws-nuke-v3.2.2-linux-amd64.tar.gz"
      sha256 "1c19e006d0ced7ce2b6f0ef1707dc6fc8c259e2c8026e55ad2bdf84929c5e392"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.2.2/aws-nuke-v3.2.2-linux-arm7.tar.gz"
      sha256 "2bff72d4aa529e57b4fde5c1632d1a2321ea86c9f6a685e82a949fcbb8a5cb27"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.2.2/aws-nuke-v3.2.2-linux-arm64.tar.gz"
      sha256 "c3618f6bea3fbe9b8c0371aa3e0b093c37e3ae37f62d47f77edc2ba23c235d18"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
