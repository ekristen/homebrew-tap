class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.5.21.tar.gz"
      sha256 "8bf1fe757f2a968c3128c0362f853799751299e146318d31d3ed06263c98d240"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.5.21/gcp-nuke-v1.5.21-darwin-arm64.tar.gz"
      sha256 "82b27e2cb659408cd0b40b4b8a9b9d9e43ed9390c4dd8764a1ebf9ae015cc40e"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.5.21/gcp-nuke-v1.5.21-linux-amd64.tar.gz"
      sha256 "3b092af65134f5bc08d081b6ff9df982f7b3dd2ac5be2c3c77ce9bcfd82ef2a2"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.5.21/gcp-nuke-v1.5.21-linux-arm64.tar.gz"
      sha256 "e95f6c5c1b505dc8808d0a622f5ffde2f2051e506dd359b39f7c67f72b360d31"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
