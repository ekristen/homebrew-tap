class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.26.tar.gz"
      sha256 "7b56ef595ff1d85f85e589f1a6e42885396d8b282855ae6584364a8f65b1f676"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.26/gcp-nuke-v1.7.26-darwin-arm64.tar.gz"
      sha256 "5377342ddafaa7e0a8045b719166ee0689ae38b917b2596342aee3932869536b"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.26/gcp-nuke-v1.7.26-linux-amd64.tar.gz"
      sha256 "040e378fb4eb5188f833124175781a58c82c1ba97b20bf7728c1c91fd8f906e1"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.26/gcp-nuke-v1.7.26-linux-arm64.tar.gz"
      sha256 "4c4bfe45bc4323e22fd3af4f34fbb835a543e7aed9443532229c53bccf5cd833"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
