class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.39/aws-nuke-v3.0.0-beta.39-darwin-amd64.tar.gz"
      sha256 "b4c1eb8d21649aa643b73bda4dffc216b7d358de3ca254b998a85628fe2a44fa"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.39/aws-nuke-v3.0.0-beta.39-darwin-arm64.tar.gz"
      sha256 "aaf918e13a35aaa44b62fdc2ef4ef129cda1765c4931f32bbcd9bdf3b15fd3fb"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.39/aws-nuke-v3.0.0-beta.39-linux-amd64.tar.gz"
      sha256 "339b2615eb4e659aaad06f6aa1390047e879b77293d350d28c229611b1e33aa1"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.39/aws-nuke-v3.0.0-beta.39-linux-arm7.tar.gz"
      sha256 "e79db37069b7c31207ed12b7732f4d3bb6e574603fe4006a0e4e0d3a63e0fbce"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.39/aws-nuke-v3.0.0-beta.39-linux-arm64.tar.gz"
      sha256 "98e0053e37f26e651f2f8afafbe98e590878e41c847db98d2fc4388f182fe987"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
