class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.21.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.21.0/aws-nuke-v3.21.0-darwin-amd64.tar.gz"
      sha256 "a136bc3a8497ffcacfebb280484911dffd74832f9ba7ee335d797ce1244cf05d"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.21.0/aws-nuke-v3.21.0-darwin-arm64.tar.gz"
      sha256 "734d1658e1dd6d84c730c58d648de71592f9dc1ddd8d5a7a0da882f0c4a53375"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.21.0/aws-nuke-v3.21.0-linux-amd64.tar.gz"
      sha256 "19974d4f10b60ef007444aac43ef0109fb1e9709397f07745ea3f6e26a154689"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.21.0/aws-nuke-v3.21.0-linux-arm7.tar.gz"
      sha256 "8152f465046e39c765d947b94404dcc1989326e05d7ecab446ea17d2edd2a1e9"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.21.0/aws-nuke-v3.21.0-linux-arm64.tar.gz"
      sha256 "dcff29b21b2b1b9bea59517194cc64fded8b4e130f455ca91b844877d92d1bf3"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
