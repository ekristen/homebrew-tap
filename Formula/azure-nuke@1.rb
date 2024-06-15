class AzureNukeAT1 < Formula
  desc "Remove all the resources from an Azure tenant"
  homepage "https://ekristen.github.io/azure-nuke/"
  version "v1.0.0-beta.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-beta.12/azure-nuke-v1.0.0-beta.12-darwin-amd64.tar.gz"
      sha256 "a91631952d5cd299be851a351afbeebea68f07ff3fbcac224ce84c0a0187bd24"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-beta.12/azure-nuke-v1.0.0-beta.12-linux-amd64.tar.gz"
      sha256 "7449409752ddb4b3d907043e348ecdb254ed71a8f3c3e1318fe3b3dd2e1facff"

      def install
        bin.install "azure-nuke"
      end
    end
  end
end
