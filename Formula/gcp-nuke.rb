class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.4.25.tar.gz"
      sha256 "d1c230b1314e2d598f2981ceecf33de6c9d78481d0e77ab829fadf552315384f"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.25/gcp-nuke-v1.4.25-darwin-arm64.tar.gz"
      sha256 "e459c24801fa187bea297e7e02c14ff7c2505a61b97876a212f78fadd6f1dd6f"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.25/gcp-nuke-v1.4.25-linux-amd64.tar.gz"
      sha256 "d8447e18656802ebab6737a4d7679ef3030624f5c4ee96780a30cb976df52225"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.25/gcp-nuke-v1.4.25-linux-arm64.tar.gz"
      sha256 "3ea5af478cc5898c073035fe188b6f7a1c6233a5a00a33f358f1bbdc071919eb"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
