class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.31.tar.gz"
      sha256 "889f8483b5a22d84ce84f658434083de979f722f7905090d1226da8d4204a65b"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.31/gcp-nuke-v1.7.31-darwin-arm64.tar.gz"
      sha256 "a7814b159bfc72190d2418688dbbdf2a4d6b3d20f6dbec4efb46ee6b900ddfcb"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.31/gcp-nuke-v1.7.31-linux-amd64.tar.gz"
      sha256 "61db65caffe379789b2798f7bd22f99e041328a9d4ad445ccd5f810dc1bd440a"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.31/gcp-nuke-v1.7.31-linux-arm64.tar.gz"
      sha256 "7502548b9c8717f0fd55fda13ef849df7909b7923be4d15e78b96cda679ae017"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
