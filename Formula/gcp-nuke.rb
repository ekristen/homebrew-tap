class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.9.tar.gz"
      sha256 "676ef347c3dd5bfefd5709382cd5d079ff32457918cc707b70ae1710168985ef"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.8/gcp-nuke-v1.7.8-darwin-arm64.tar.gz"
      sha256 "fe6244b8c0e48b43a6a92c04df759e70ddfa39957303c74b7aa54874b3d25ccd"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.8/gcp-nuke-v1.7.8-linux-amd64.tar.gz"
      sha256 "e8d7d2fda18b636d0ea8dbfb6a7ca82dc05e48aa1614af39a69867846f112101"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.8/gcp-nuke-v1.7.8-linux-arm64.tar.gz"
      sha256 "38d22b45440f1bca62fb6d247cfa59172b57b187372f274dc974e5e7577b8dfb"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
