class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.57/aws-nuke-v3.0.0-beta.57-darwin-amd64.tar.gz"
      sha256 "3cacee59fa3d69f7de46df92e1fd3cfead99557d4720e8c0b22b4268bc9b7302"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.57/aws-nuke-v3.0.0-beta.57-darwin-arm64.tar.gz"
      sha256 "e3cd645155e1156cc7c6fe679a2425e892f39e4517816f0c2aff60c10b7ce73d"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.57/aws-nuke-v3.0.0-beta.57-linux-amd64.tar.gz"
      sha256 "933e0eee537b73c2a4f9d70dc97d0f83d270a1db2bf455b00762469a4933e4d0"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.57/aws-nuke-v3.0.0-beta.57-linux-arm7.tar.gz"
      sha256 "be0302a592ab7ac7b78b233816909a84d10c38d18943a1d3c291aa19ca6b4574"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.57/aws-nuke-v3.0.0-beta.57-linux-arm64.tar.gz"
      sha256 "e10c29924188f6386715e117b99e021724b5ed1fa1c5533970282d74e7609511"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
