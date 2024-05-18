class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.52/aws-nuke-v3.0.0-beta.52-darwin-amd64.tar.gz"
      sha256 "222c86e5f91a1f6e4ef1e7e0eeeb55787fce315368e1913b50ea18e5f3498730"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.52/aws-nuke-v3.0.0-beta.52-darwin-arm64.tar.gz"
      sha256 "181a42227494ebbeffa71abf7881444f6ef1fc74f4ae60780d04bea69c0a1dd3"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.52/aws-nuke-v3.0.0-beta.52-linux-amd64.tar.gz"
      sha256 "99c06a5166420dd61cc9582261781271c90e27449fbaedc31a76f86ebab79754"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.52/aws-nuke-v3.0.0-beta.52-linux-arm7.tar.gz"
      sha256 "64d4a14ff0d43a5ed69bac8b6125178b04c760abe3c0c933035d9ceeceb7ef84"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.52/aws-nuke-v3.0.0-beta.52-linux-arm64.tar.gz"
      sha256 "a423faf1ed82ad09747ae691b396bc8c5360dd6ec15c6dea3366e14026f533fa"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
