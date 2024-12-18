class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.6.12.tar.gz"
      sha256 "c412586b7b2bb0584ad56ac3ad528b81938b7ded1a19ff52d94e9f7c7417a9c0"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.12/gcp-nuke-v1.6.12-darwin-arm64.tar.gz"
      sha256 "0121d14e7fc64f4f6d14693a7770a54aef6da3cdac0bdda1bf5026ee44ff8bf8"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.12/gcp-nuke-v1.6.12-linux-amd64.tar.gz"
      sha256 "38c8292713676127071a035098f6ff605de52ecf80f0cbcc8140a6aabd2ea82e"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.12/gcp-nuke-v1.6.12-linux-arm64.tar.gz"
      sha256 "609a97a93e7e559fd55da8b849741cffe1a9e589c10678fbf8783f0866926dfe"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
