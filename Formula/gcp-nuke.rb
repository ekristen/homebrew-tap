class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.4.27.tar.gz"
      sha256 "6c680112054366dfdbbde73615eed76a7412b2d8dadefd04220c36c756260a01"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.27/gcp-nuke-v1.4.27-darwin-arm64.tar.gz"
      sha256 "df619e0621cad3d0af3ce413f9598c44897787a2151985b4e9e0558aa5ffba17"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.27/gcp-nuke-v1.4.27-linux-amd64.tar.gz"
      sha256 "9c1d27818ea45b9d09630eee33cf9bebbb144fd7b13b6f9b6dc87ad6d5d1f50c"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.27/gcp-nuke-v1.4.27-linux-arm64.tar.gz"
      sha256 "a3eef18c1119a6e7508e04f26dd846da1ec5990ab2a8eeb596a06def89077d41"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
