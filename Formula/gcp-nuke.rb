class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.6.5.tar.gz"
      sha256 "feb817026ea1958342b2730a10b00e3a2775ed5f3a89c55618a49b7573d6222f"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.5/gcp-nuke-v1.6.5-darwin-arm64.tar.gz"
      sha256 "eb06414775ae46ef82524a2e218a848318e5c9c5d930ec13be51962ea2f2c20b"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.5/gcp-nuke-v1.6.5-linux-amd64.tar.gz"
      sha256 "2260100a8527c2d4d1501b060c408ecf68a46ab63b66244cd6b1bb3e7caa7168"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.5/gcp-nuke-v1.6.5-linux-arm64.tar.gz"
      sha256 "71c4c6dd1121847e70038248a46f1bec7e4e281f3f1dc98c34b28e4036579ec6"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
