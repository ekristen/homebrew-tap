class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0/gcp-nuke-v1.0.0-darwin-amd64.tar.gz"
      sha256 "31e2be185e7cd84ec482046e3a41f7f2ce9cd5c13df4d3e002a74ff68d7f68e4"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0/gcp-nuke-v1.0.0-darwin-arm64.tar.gz"
      sha256 "e1e8c6deb0a16917670c6558ff8313de91a25ba20497d8fdffddfe5ceeda00af"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0/gcp-nuke-v1.0.0-linux-amd64.tar.gz"
      sha256 "41b962be49013f65387f1b0ee2268d3272387a47a3dc56ab1aaedddc8ab06bf8"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0/gcp-nuke-v1.0.0-linux-arm64.tar.gz"
      sha256 "542ab75b4beb8124b85d1f3df305f8d18bfb4ec026884c44ed03f59f310be926"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
