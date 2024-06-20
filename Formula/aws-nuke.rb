class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0/aws-nuke-v3.0.0-darwin-amd64.tar.gz"
      sha256 "0ad210a53fdbc5adb8690a8b13005da595ca7eff6cb57221d46eba2c5e55b31a"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0/aws-nuke-v3.0.0-darwin-arm64.tar.gz"
      sha256 "80c7d225f77b9e68272e2138dbaceb70d3b13c16ef0ae3b0f4acd733fd520f67"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0/aws-nuke-v3.0.0-linux-amd64.tar.gz"
      sha256 "107991a66705639e0b7964f339e8d4e03b7f7d7a7b3b49bdadebca17b1685449"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0/aws-nuke-v3.0.0-linux-arm7.tar.gz"
      sha256 "f9280cc3885411534c77af4f4203c841b6a4f20a108f10eee48964b2f9b1e6c5"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0/aws-nuke-v3.0.0-linux-arm64.tar.gz"
      sha256 "53a47b2b14298fc19bb949aa2512a7f4b1f30eaac99c7cab6fab2f9a62c99198"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
