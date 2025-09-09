class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.30.tar.gz"
      sha256 "6c317b34bbe62c7d41d62dc3bfe48fe97e8ecc9964809a3343282a429b986275"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.30/gcp-nuke-v1.7.30-darwin-arm64.tar.gz"
      sha256 "d74eeb66f87dee0f5221110660dff1fbf93d0f38010889e0dea14fb445b3b3a0"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.30/gcp-nuke-v1.7.30-linux-amd64.tar.gz"
      sha256 "4b425aa9f5722b053b654a374efae349d5e353856101f4991a7fcfbaf45d0853"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.30/gcp-nuke-v1.7.30-linux-arm64.tar.gz"
      sha256 "eb25f009201ddfb6169a73a4502138bdd40bf0d1ffef6c61b63038b7d419310b"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
