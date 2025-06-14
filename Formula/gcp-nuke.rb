class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.23.tar.gz"
      sha256 "ca46ffc7961b66e8f44705fec8b87fea9e5a5b15b690027a10682fb8111ed0c6"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.23/gcp-nuke-v1.7.23-darwin-arm64.tar.gz"
      sha256 "ae55886317b2f59fc979c67dcc505e96ab3d929f59fa39ffc730a071bc38d170"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.23/gcp-nuke-v1.7.23-linux-amd64.tar.gz"
      sha256 "4675bdeb41aa8e323c971b3e8d8aa135a5a0867a7ca9552422d8c17e0a1c0833"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.23/gcp-nuke-v1.7.23-linux-arm64.tar.gz"
      sha256 "f3847dff080e37291f450fd6d8f77deb30f50645db42ae6f20a71a8826eb5ac8"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
