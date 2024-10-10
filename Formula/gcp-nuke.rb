class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.4.21.tar.gz"
      sha256 "719930d352afd7635151f644153a4958bd6232da8ec01ba9396d7a06050a38df"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.21/gcp-nuke-v1.4.21-darwin-arm64.tar.gz"
      sha256 "44a7800819bef84b40a0d5b2c18f137eed3721a6f88e7928afd8e345228f3c91"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.21/gcp-nuke-v1.4.21-linux-amd64.tar.gz"
      sha256 "14596bc390cc39ed3d72160540c76aa0c065e9777f27a17b3c2c19166a63570b"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.21/gcp-nuke-v1.4.21-linux-arm64.tar.gz"
      sha256 "1163b414baf4d5a18f9467c7e9c823fe89001f431f5c87217bb48689dec15a52"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
