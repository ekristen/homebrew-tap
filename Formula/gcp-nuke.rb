class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.11/gcp-nuke-v1.0.0-beta.11-darwin-amd64.tar.gz"
      sha256 "435c61ed117856dee461b069a03c0184d1578620d89355706343d1a6bac13f58"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.11/gcp-nuke-v1.0.0-beta.11-darwin-arm64.tar.gz"
      sha256 "32188227a696ac3c5a20ff38f7dbe0a332c24f094161b34d68848bc22e0661df"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.11/gcp-nuke-v1.0.0-beta.11-linux-amd64.tar.gz"
      sha256 "3178004ae6b72bedd2ea68169059ea76f2c91ef88339fcd70af22c899bd89050"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.11/gcp-nuke-v1.0.0-beta.11-linux-arm64.tar.gz"
      sha256 "6401b0775125161b9011c6cf9e185e8e0eb6bd308720bee42975b50fb6923b89"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
