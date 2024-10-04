class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.4.18.tar.gz"
      sha256 "07c09b9fcd99bd2b4c6e2683a31b8fa5bb71993eaf75997cec4e39636549495b"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.18/gcp-nuke-v1.4.18-darwin-arm64.tar.gz"
      sha256 "5c6d070f39fda2d69cb5595b3e58c376473dcc2a1c5c5353996bfce812213d46"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.18/gcp-nuke-v1.4.18-linux-amd64.tar.gz"
      sha256 "cc8d7057be80383b9357ab4ef8817c970026526f8ef1c46fe1133fd52129200a"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.18/gcp-nuke-v1.4.18-linux-arm64.tar.gz"
      sha256 "67d0ed71d4270d3fe8a8397b8f4115495bb5b89d146f6c9b76a37c272aba9b6e"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
