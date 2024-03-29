class AzureNukeAT1 < Formula
  desc "Remove all the resources from an Azure tenant"
  homepage "https://ekristen.github.io/azure-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-next.10/azure-nuke-v1.0.0-next.10-darwin-amd64.tar.gz"
      sha256 "636f78ad3d8a7e89f8de1b39e7e2576218dca20b3d19892391e21b59dc5d9213"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-next.4/azure-nuke-v1.0.0-next.4-darwin-arm64.tar.gz"
      sha256 "5e63fa435b926d5935b414bebd542a375eb632241315e86fa1a1ebfa4414ae76"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-next.10/azure-nuke-v1.0.0-next.10-linux-amd64.tar.gz"
      sha256 "968c5563c7d9ea52366f6dade79c33f694177ae30d693d0d0499868b194d3ed2"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-next.4/azure-nuke-v1.0.0-next.4-linux-arm7.tar.gz"
      sha256 "5c33bf3521b185e3002ec0a5f5285ef03a451591d9a56eddfdd81b795d55485e"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-next.4/azure-nuke-v1.0.0-next.4-linux-arm64.tar.gz"
      sha256 "01e40b445924897cec8fc66838b0c24b4ec8578ee7413f283ef7f65944520124"

      def install
        bin.install "azure-nuke"
      end
    end
  end
end
