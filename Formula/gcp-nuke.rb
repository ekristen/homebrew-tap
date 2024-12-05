class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.6.3.tar.gz"
      sha256 "daa84bddc3672c2cb4cb1f09832c3d2463af5361f27d76146cee9420f3a9c89d"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.3/gcp-nuke-v1.6.3-darwin-arm64.tar.gz"
      sha256 "e67ab65ee64cba27fc2887cdf5bb9e87dfa95ac214da0b44ac1ef74ad3dbb7ff"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.3/gcp-nuke-v1.6.3-linux-amd64.tar.gz"
      sha256 "9d77975b07e12893ac0bb8c88a22c72942251f2e6391005c257848e047b84be1"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.3/gcp-nuke-v1.6.3-linux-arm64.tar.gz"
      sha256 "a5186cc651ecf952971a5c6ffa69db7529e6e191ebaa33dc74f322dc76d498f3"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
