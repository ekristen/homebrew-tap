class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.5.0.tar.gz"
      sha256 "c1d00d23bfb4e186b124c4be69abae402e6e479fd236c3b7e588bca678f27039"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.5.0/gcp-nuke-v1.5.0-darwin-arm64.tar.gz"
      sha256 "d7eecb9e9fe8fb852f3375d77b573c93f2e8eb8dddd2279777183b98cacf3430"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.5.0/gcp-nuke-v1.5.0-linux-amd64.tar.gz"
      sha256 "df59c3673d14831da5eacb843fcc653a3f9df5eb40f3bd98016c8f3b29165469"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.5.0/gcp-nuke-v1.5.0-linux-arm64.tar.gz"
      sha256 "1d6ef2adedab1c91e75cf90222b1893e0d5e7e9d31d7567b2c36f1663aeaf327"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
