class AzureNukeAT1 < Formula
  desc "Remove all the resources from an Azure tenant"
  homepage "https://ekristen.github.io/azure-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-next.8/azure-nuke-v1.0.0-next.8-darwin-amd64.tar.gz"
      sha256 "4759cb8a2497b4c828a1f871035961746043eed990fa88380f41d69df7be1bf5"

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
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-next.8/azure-nuke-v1.0.0-next.8-linux-amd64.tar.gz"
      sha256 "2fdde016f59e3ecba0836343cf5b311d1dd44426dc2dfd854ab1499d3017716a"

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
