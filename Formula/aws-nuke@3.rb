class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account."
  homepage "https://ekristen.github.io/aws-nuke/"
  version "v3.0.0-beta.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.17/aws-nuke-v3.0.0-beta.17-darwin-amd64.tar.gz"
      sha256 "bc1984bf923ca164761211bc1046764d6937f7c19f109101927120d474910f89"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.17/aws-nuke-v3.0.0-beta.17-darwin-arm64.tar.gz"
      sha256 "c7381133c638a89ad23edd569b96982ed24213cd7d48a46ec972335939dd6733"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.17/aws-nuke-v3.0.0-beta.17-linux-amd64.tar.gz"
      sha256 "8fdeef72069dc89f3b5770dbd57774d3aecfe66a69c13791b266cc2b12017326"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.17/aws-nuke-v3.0.0-beta.17-linux-arm7.tar.gz"
      sha256 "671576a8dd5ea92b8469085feccd04dad506ed49441709a484e59ed303f59b2d"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.17/aws-nuke-v3.0.0-beta.17-linux-arm64.tar.gz"
      sha256 "a3fb573cd84a4f72322a9ec92882697c7d8edb339848f0a1b1d1b3201a9f6072"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
