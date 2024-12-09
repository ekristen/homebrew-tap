class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.35.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.1/aws-nuke-v3.35.1-darwin-amd64.tar.gz"
      sha256 "90ced41d2e2c3130ae7b819c06c84c418eb5f149137bb79e7237bb2a889adc11"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.1/aws-nuke-v3.35.1-darwin-arm64.tar.gz"
      sha256 "95b2379477042d09ab65e6be219969fb99d5de0bee7474e5c7932331acd9fd47"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.1/aws-nuke-v3.35.1-linux-amd64.tar.gz"
      sha256 "58105f9045c0f6b5c2b2b9753124a33cb1043e9ec7c67fc433a0fa603e0a5b47"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.1/aws-nuke-v3.35.1-linux-arm7.tar.gz"
      sha256 "aff608693fb408494b555d36e609ff8106e2eeaaccf3a74195db1d75f3ea35d3"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.35.1/aws-nuke-v3.35.1-linux-arm64.tar.gz"
      sha256 "fe022878725d477ba3ffcc555010d13214ade0ee6ede30ea333ffb5ed75e84da"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
