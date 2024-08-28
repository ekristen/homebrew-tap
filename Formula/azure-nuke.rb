class AzureNuke < Formula
  desc "Remove all the resources from an Azure tenant"
  homepage "https://ekristen.github.io/azure-nuke/"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.1.0/azure-nuke-v1.1.0-darwin-amd64.tar.gz"
      sha256 "fe784f0657b3b163a76c78bf55e36015dc3e7f3b3447f07d45f037fec782d5e7"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.1.0/azure-nuke-v1.1.0-darwin-arm64.tar.gz"
      sha256 "d93920601172dbb723d19572f119722f94a6788a82a0416897445a5845874506"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.1.0/azure-nuke-v1.1.0-linux-amd64.tar.gz"
      sha256 "9622a0ed63b78998a632b81ab44643ca8f0b534a9e8b24f694ce73d88d293f83"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.1.0/azure-nuke-v1.1.0-linux-arm7.tar.gz"
      sha256 "5f991d8f688444a8b54b4373bb1439cfcccda7e16677f531225f0153390b0f7d"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.1.0/azure-nuke-v1.1.0-linux-arm64.tar.gz"
      sha256 "68a0ba7d2c94ebd02dc6dbd13243f08685ebbfcf989f701e12ceed2f0d619ae9"

      def install
        bin.install "azure-nuke"
      end
    end
  end
end
