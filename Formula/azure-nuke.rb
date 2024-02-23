class AzureNuke < Formula
  desc "Remove all the resources from an Azure tenant"
  homepage "https://ekristen.github.io/azure-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v0.15.0/azure-nuke-v0.15.0-darwin-amd64.tar.gz"
      sha256 "d1efd3bd6dfce717c72edcbb78ac2bb90cdc11bbca7be08229dc6027e78d2826"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/azure-nuke/releases/download/v0.15.0/azure-nuke-v0.15.0-darwin-arm64.tar.gz"
      sha256 "4d3aec6e0d48296848609138623ff98e20fbff9f6b7bc817648fbeb2189ddd04"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v0.15.0/azure-nuke-v0.15.0-linux-amd64.tar.gz"
      sha256 "24266ab600faf4e2624db5af6df2ca225354c700efa9a4cd31862ec30a7099be"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v0.15.0/azure-nuke-v0.15.0-linux-arm7.tar.gz"
      sha256 "d19931709e57d708f9906634caa5fccf542ba2a574fd1eade266ca0a060b183b"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v0.15.0/azure-nuke-v0.15.0-linux-arm64.tar.gz"
      sha256 "3bd09ddc44723080a57489a1b752ad25f41f58638ebf6bc0a563d8704a01dcc9"

      def install
        bin.install "azure-nuke"
      end
    end
  end
end
