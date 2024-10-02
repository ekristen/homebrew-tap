class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.13/gcp-nuke-v1.4.13-darwin-amd64.tar.gz"
      sha256 "fba3c828dbf16f0fcb9b0cecbbdfa29b044cd4633859632c133a7a4d17845e37"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.13/gcp-nuke-v1.4.13-darwin-arm64.tar.gz"
      sha256 "ed32e648ebc5c991ef511e4357f6cd940706fd83fd5dbe1f92cc6de91aa41555"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.13/gcp-nuke-v1.4.13-linux-amd64.tar.gz"
      sha256 "25e6e3b11cbf6378fda037ecd5482e90f41815b3a696773af6432aa770d7050f"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.13/gcp-nuke-v1.4.13-linux-arm64.tar.gz"
      sha256 "0e15bae9bf9292cd4e69eb2de6b2cfdc4494924166e4d3cebddef0cce4f01791"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
