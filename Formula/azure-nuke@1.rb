class AzureNukeAT1 < Formula
  desc "Remove all the resources from an Azure tenant."
  homepage "https://ekristen.github.io/azure-nuke/"
  version "1.0.0-next.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v2.26.6/azure-nuke_darwin_amd64.tar.gz"
      sha256 "5dae4af71638775b347a5742f63193e28ca88b20266aeb5d5f9a5f837aa79b7b"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/azure-nuke/releases/download/v2.26.6/azure-nuke_darwin_arm64.tar.gz"
      sha256 "29562f9c00508d3cf1f2c43cd53eaefe12d2b136db04a08fc116008fd804f449"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v2.26.6/azure-nuke_linux_amd64.tar.gz"
      sha256 "8999d5bbf669abe87cd417e8266d82ee7e7772294840d970a721e950b026f69a"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v2.26.6/azure-nuke_linux_arm7.tar.gz"
      sha256 "eb1c7a6434c2bcdd26dc8434533dbadd58a6d5af1028ab2de7e21e0986ea92c9"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v2.26.6/azure-nuke_linux_arm64.tar.gz"
      sha256 "91aa32eccda6b4dd7d688aadb8766dbc6a63af92c4f0f6eb590f90dc619fd3af"

      def install
        bin.install "azure-nuke"
      end
    end
  end
end
