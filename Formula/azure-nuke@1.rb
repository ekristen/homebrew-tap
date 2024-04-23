class AzureNukeAT1 < Formula
  desc "Remove all the resources from an Azure tenant"
  homepage "https://ekristen.github.io/azure-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-next.11/azure-nuke-v1.0.0-next.11-darwin-amd64.tar.gz"
      sha256 "e591c54c4a77cdea860dccf25f9ceab770fa68c9e4085030b78fd839c4b5737c"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-next.11/azure-nuke-v1.0.0-next.11-linux-amd64.tar.gz"
      sha256 "a558899ffd1b6256e04b1da81ed51778989a806897d1b8f2869336706ed342c7"

      def install
        bin.install "azure-nuke"
      end
    end
  end
end
