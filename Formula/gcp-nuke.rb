class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.2.tar.gz"
      sha256 "3504d1317491c8fd28aa00f97993cda33047b42ae370a5ed98e8b45359349591"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.2/gcp-nuke-v1.7.2-darwin-arm64.tar.gz"
      sha256 "60f1248dc4fd2bea881ea50473f6cddba20322edd869f4d60a7719da38c95830"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.2/gcp-nuke-v1.7.2-linux-amd64.tar.gz"
      sha256 "77e5e46c29f134b32be6e9218959a9ca1f305a9b00578c8fd831c070eedbfa2c"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.2/gcp-nuke-v1.7.2-linux-arm64.tar.gz"
      sha256 "291feefdf6a18928bbd752c2e99e5325c2f5ea50cd949bda14dcd263652f7737"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
