class AzureNuke < Formula
  desc "Remove all the resources from an Azure tenant"
  homepage "https://ekristen.github.io/azure-nuke/"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0/azure-nuke-v1.0.0-darwin-amd64.tar.gz"
      sha256 "7d1766dd5dd49e4c7435024cc2f3f0545be89ba896576c726f0cddd093ba3ae8"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0/azure-nuke-v1.0.0-darwin-arm64.tar.gz"
      sha256 "9201bab21db08ccdaf851f6e1250ed62897687bbb636b4afdd799ce8f2b29c8e"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0/azure-nuke-v1.0.0-linux-amd64.tar.gz"
      sha256 "fba7b8583966981d4d582a2af8404e67f7e4099583663a8489dbd767e650471a"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0/azure-nuke-v1.0.0-linux-arm7.tar.gz"
      sha256 "d0ed05c7ffa65f3a94085233406186d5fbc2c0df27700563a2b3c62ad7293d35"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0/azure-nuke-v1.0.0-linux-arm64.tar.gz"
      sha256 "be80054b56dcad8e37ba4c31ab2d624ef739493cb859ac3ffe85cca3e5f49f0e"

      def install
        bin.install "azure-nuke"
      end
    end
  end
end
