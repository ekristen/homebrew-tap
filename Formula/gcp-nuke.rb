class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.5.tar.gz"
      sha256 "02ac4b54c114f6cd984bf0d46dd5689b626b0ad4e643482dfc43532e1a7f1250"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.5/gcp-nuke-v1.7.5-darwin-arm64.tar.gz"
      sha256 "5b92fe81edd60fe03fdd639cb8d14dc74bcc5f08f7b03a2589cac10c21c7a4ee"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.5/gcp-nuke-v1.7.5-linux-amd64.tar.gz"
      sha256 "7b83007f65687c3db9689db5dce70cf3a3e698c08f451b62827f96b524fc5658"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.5/gcp-nuke-v1.7.5-linux-arm64.tar.gz"
      sha256 "f493a351c7f9013068b5281d25d519372c4b7c3721a0b2cdbd5f1f9f64df9d06"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
