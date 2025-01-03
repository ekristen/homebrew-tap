class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.41.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.41.0/aws-nuke-v3.41.0-darwin-amd64.tar.gz"
      sha256 "cbcdbabcb213559c7f315b657b89f5d2f1566fc654b6c1854f666a5bad3bcc17"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.41.0/aws-nuke-v3.41.0-darwin-arm64.tar.gz"
      sha256 "49e5108c487a8a41cbfc750670adfbf335541316aece0a9947ffd1dd2b3b7c96"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.41.0/aws-nuke-v3.41.0-linux-amd64.tar.gz"
      sha256 "8d95b7dc9d5b072f97c8214a01230289c2b4e0beec8862537af6d3141e02783e"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.41.0/aws-nuke-v3.41.0-linux-arm7.tar.gz"
      sha256 "a428742e78f7ec529db805c0bd77be450ca61481d29117d4a90395d5389ec576"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.41.0/aws-nuke-v3.41.0-linux-arm64.tar.gz"
      sha256 "1402d3dd7b3a298a3b1801d3a1c30ab909b07ce8b444712ced010b43f68985f1"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
