class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.30/aws-nuke-v3.0.0-beta.30-darwin-amd64.tar.gz"
      sha256 "c3684df6dcd582a23c6e61ccd32e3072f9a1c0445a3078d21ef1f32134288a07"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.30/aws-nuke-v3.0.0-beta.30-darwin-arm64.tar.gz"
      sha256 "87f8cb50258a648f14190cdc79e1d6112ed136fcc0f13cfb6a450d45abab5db2"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.30/aws-nuke-v3.0.0-beta.30-linux-amd64.tar.gz"
      sha256 "45911363a16a7ba22a5711cb19e613b7da01964c05cc56cbfbf897c09fc7a119"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.30/aws-nuke-v3.0.0-beta.30-linux-arm7.tar.gz"
      sha256 "20e1f55851704ff29d851da1c3d8e43f6a73f9c9560b371e6f47ad050f7546c6"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.30/aws-nuke-v3.0.0-beta.30-linux-arm64.tar.gz"
      sha256 "0e5c9c5d2a70b57bc7acc5af423a2d27d4603939454fd71abfafddf9792464fc"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
