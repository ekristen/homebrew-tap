class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.8.1.tar.gz"
      sha256 "d2c562da73e8c5d506cdd3c7965a9c3d4ee165d9e992064553a67d8d25208a91"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.8.1/gcp-nuke-v1.8.1-darwin-arm64.tar.gz"
      sha256 "9fb46469353b9eeb5be8f430e7ff22a5a273ce2bf4fd517b5cb8614ae2c72281"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.8.1/gcp-nuke-v1.8.1-linux-amd64.tar.gz"
      sha256 "25f711943f4da85c967bbfebdf60c2c8f8c3eb027d3832459ac1bdacff18d7a5"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.8.1/gcp-nuke-v1.8.1-linux-arm64.tar.gz"
      sha256 "dfb5c828e6147b0b0477e61a62c4bab3419120f373fcbcadaed175e71e56a3b5"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
