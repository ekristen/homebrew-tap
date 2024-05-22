class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.9/gcp-nuke-v1.0.0-beta.9-darwin-amd64.tar.gz"
      sha256 "ccb8484b09a362e700b67894295a6744667226fa526e18e6988c2650dd8d0a87"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.9/gcp-nuke-v1.0.0-beta.9-darwin-arm64.tar.gz"
      sha256 "92f3a5ef9622ef727594835b09433381864e627c11553efc3f05b74be8e36d18"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.9/gcp-nuke-v1.0.0-beta.9-linux-amd64.tar.gz"
      sha256 "5e589dbf89f7fc94b9717b6b7cec311b0dac4bc135bb124df3467e07fa4ce95a"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.9/gcp-nuke-v1.0.0-beta.9-linux-arm64.tar.gz"
      sha256 "c01e819f9220b256d7bec0b79890a776b4ec5fdb36d53920e05ee9f8419dec19"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
