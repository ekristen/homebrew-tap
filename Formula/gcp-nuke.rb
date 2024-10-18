class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.4.26.tar.gz"
      sha256 "3d785c458b986a98d73501fc5fcdadb147adfa714ed8f392bb9cca83dfea4c3f"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.26/gcp-nuke-v1.4.26-darwin-arm64.tar.gz"
      sha256 "932603e4b5602dfe313fddb6a910b95efe0d13542c70689bd8fc293361c86ae1"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.26/gcp-nuke-v1.4.26-linux-amd64.tar.gz"
      sha256 "bef60ef74688d5e4987abaed65faaa499bf8d9cfe8c8aa53665bc1d0548a700d"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.26/gcp-nuke-v1.4.26-linux-arm64.tar.gz"
      sha256 "8c2341a87f1f7a2bc5b79907f6b13f280305f9d23b516a70dbc2f92b5cdbcf75"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
