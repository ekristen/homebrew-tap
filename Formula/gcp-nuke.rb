class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.7/gcp-nuke-v1.4.7-darwin-amd64.tar.gz"
      sha256 "d0a3d0b429d639b6b348fb10061a18b10d00f48ad5d43add2822363c450f0cf0"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.7/gcp-nuke-v1.4.7-darwin-arm64.tar.gz"
      sha256 "1df30ae83fe652be114a1002f833da93f33429f3ae6e303b6131cd2ea79d309e"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.7/gcp-nuke-v1.4.7-linux-amd64.tar.gz"
      sha256 "64df7b4390d6bd02f08217657920721ef1fcea522637d8b15615bb6e703fd2c2"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.7/gcp-nuke-v1.4.7-linux-arm64.tar.gz"
      sha256 "cc1b006c986dcd115e823fae34377d1d648bbde7350f8405a5362c1a9743fb11"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
