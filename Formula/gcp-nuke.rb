class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.6.8.tar.gz"
      sha256 "b50df48829242ef9d750f5ea9c368e47f7bdb33f2ddb99fc6a0b94320b4d50ea"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.8/gcp-nuke-v1.6.8-darwin-arm64.tar.gz"
      sha256 "0c152a4bd24f28f10e40a40e6ca1cf0d639a5fcf6da7c0fa53e41b96f694ee84"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.8/gcp-nuke-v1.6.8-linux-amd64.tar.gz"
      sha256 "9632cb9070bee0bbb9c9c8e090401e6b88257f2eedddbdc56317ad53b3132e40"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.8/gcp-nuke-v1.6.8-linux-arm64.tar.gz"
      sha256 "3787be9c2bdedb6cfe939ca32a94f4996d19df1926195bdfa7cf23799fdee85e"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
