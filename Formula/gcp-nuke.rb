class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.6.13.tar.gz"
      sha256 "739bd3f63b7a1296f5065bb813acef05863fcfc53665caa1f173c2374166dc5d"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.13/gcp-nuke-v1.6.13-darwin-arm64.tar.gz"
      sha256 "654a3f9c230ddacbecaf4ef00fe79ee13916e25753b7b186779412c41fc79b1e"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.13/gcp-nuke-v1.6.13-linux-amd64.tar.gz"
      sha256 "54dee9a9093b5afde58dc2b135062ea962bc34f124e73a421b1edeae71ea4e14"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.13/gcp-nuke-v1.6.13-linux-arm64.tar.gz"
      sha256 "9b5d910a3605fe62e2b5f50f6e1e83d1b195919ad0f754ef34124f975898014c"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
