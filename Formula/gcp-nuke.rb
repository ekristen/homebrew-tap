class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.21.tar.gz"
      sha256 "1e6f81bfd58ef90c75cdddaef90e6095c97aed3315beeaa3ae9bb9355204b313"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.21/gcp-nuke-v1.7.21-darwin-arm64.tar.gz"
      sha256 "6ada8d95facfd3fbe622fe37c6dc3a1af8782611e737af9e0a169cea26aa89da"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.21/gcp-nuke-v1.7.21-linux-amd64.tar.gz"
      sha256 "3941441a0394af2a644e749804f1a11ba33aa63ef28cd0e2873e597733911b8c"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.21/gcp-nuke-v1.7.21-linux-arm64.tar.gz"
      sha256 "dd289275f30a49588fd4e0fe2c5af2237ec032897887f8e10e32916fefe5ef78"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
