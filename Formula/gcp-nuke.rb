class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.13.4.tar.gz"
      sha256 "6f15275708061b5d53bfbcfc978255949f8e3238730ac2f28c81e722b853ef1b"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.13.4/gcp-nuke-v1.13.4-darwin-arm64.tar.gz"
      sha256 "c4c864b6bf79c664da6fc452dee982a2b788bad7f881d30f791e8cdfb8384bc0"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.13.4/gcp-nuke-v1.13.4-linux-amd64.tar.gz"
      sha256 "2cc67ad997d3558b6fffd88b1a9ed9a7b7b59f83f5a8534f843d71a13b890dfc"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.13.4/gcp-nuke-v1.13.4-linux-arm64.tar.gz"
      sha256 "90a8958d94966af8d2a89745764d0a95f87cb4e4b790e4ff6506d4c5491d20b3"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
