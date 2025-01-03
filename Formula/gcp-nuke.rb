class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.1.tar.gz"
      sha256 "b1901a5405b5620a1d30d36c88d514bcf8111fc4f2b1b717869c5f60a2c6631a"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.1/gcp-nuke-v1.7.1-darwin-arm64.tar.gz"
      sha256 "635e163ddf5f4d1c8cd8d417c80cf7da99e37be0304e055449c62e434d993745"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.1/gcp-nuke-v1.7.1-linux-amd64.tar.gz"
      sha256 "6c7c25bd32763d93a753b437f8e8fcc7cfaf70ef04c779d9ee0020774b14dac8"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.1/gcp-nuke-v1.7.1-linux-arm64.tar.gz"
      sha256 "8211f45516cd70222011491532aea28235da20c12f8563168b2bbc70d643dc41"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
