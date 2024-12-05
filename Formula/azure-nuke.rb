class AzureNuke < Formula
  desc "Remove all the resources from an Azure tenant"
  homepage "https://ekristen.github.io/azure-nuke/"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.2.0/azure-nuke-v1.2.0-darwin-amd64.tar.gz"
      sha256 "79f260ec884e49b5cb73cae9b7e3df373ed254f184304bedf2a04d3b7a1cbf93"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.2.0/azure-nuke-v1.2.0-darwin-arm64.tar.gz"
      sha256 "f4f48f5a9477accbf9f664e3c8283d8406af7e8f446c40ac333d7ceb0a43485b"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.2.0/azure-nuke-v1.2.0-linux-amd64.tar.gz"
      sha256 "50adac11831a9fd07e49990aa5b5e696c4db82b22edf780b17172352d957bf6e"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.2.0/azure-nuke-v1.2.0-linux-arm7.tar.gz"
      sha256 "eaebb3319862a1d1f4c1eff83ca224a9c97cf66c60c781276ac508e188a824b1"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.2.0/azure-nuke-v1.2.0-linux-arm64.tar.gz"
      sha256 "abc773ed48cfef93a5ab35332c201bba8f2fcb566de89757ac0a9dafe48b6026"

      def install
        bin.install "azure-nuke"
      end
    end
  end
end
