class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.18/gcp-nuke-v1.0.18-darwin-amd64.tar.gz"
      sha256 "13cdd86f602340682d8564681f7e61c227155c83ba5f7a4c174074f81ba2846e"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.18/gcp-nuke-v1.0.18-darwin-arm64.tar.gz"
      sha256 "f2652ad80c86a32e6e35b6eef63b062c34b2bf43f82d8f780d30cb41185c0e8a"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.18/gcp-nuke-v1.0.18-linux-amd64.tar.gz"
      sha256 "c9629b58b5c8fdce46e506482e29af6233588796d02aa5890b06344e88f4a8d9"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.18/gcp-nuke-v1.0.18-linux-arm64.tar.gz"
      sha256 "f6c85974781e77fe3d06a0c8943273a0dbf8f20c61496216fd44e5d28b835e0c"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
