class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "v3.0.0-beta.22"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.22/aws-nuke-v3.0.0-beta.22-darwin-amd64.tar.gz"
      sha256 "33d8bc581596bc6d970ba3e6edca0fdcd1e1e91cad61b764aa327597c5c5342f"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.22/aws-nuke-v3.0.0-beta.22-darwin-arm64.tar.gz"
      sha256 "2c5563310679818830f81d25fb095828e900e9724791f9b5adc90245805e0ebc"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.22/aws-nuke-v3.0.0-beta.22-linux-amd64.tar.gz"
      sha256 "e7dd97bd8a090863da2bc4cd9a8b86cdf2366e9e2ba84d8d6ed4f7a45b2d8c40"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.22/aws-nuke-v3.0.0-beta.22-linux-arm7.tar.gz"
      sha256 "18116d34f039a5ae00580ad4ca0322b17f40cf45b8fbc35e0e408e22e8498f35"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.22/aws-nuke-v3.0.0-beta.22-linux-arm64.tar.gz"
      sha256 "de28f546c1ea570a58c52a37565adc4be198f60d1d917a13f1ba261e3cc8d365"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
