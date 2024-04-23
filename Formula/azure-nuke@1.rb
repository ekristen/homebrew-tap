class AzureNukeAT1 < Formula
  desc "Remove all the resources from an Azure tenant"
  homepage "https://ekristen.github.io/azure-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-beta.3/azure-nuke-v1.0.0-beta.3-darwin-amd64.tar.gz"
      sha256 "9facf7c068a365adc6641f8cdaea30b6e3b09af43f0594a23956b437dffd6259"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-beta.3/azure-nuke-v1.0.0-beta.3-linux-amd64.tar.gz"
      sha256 "beb14c78f5343f12f413a1ee35858f07750a97f50beaa31fa8cda9f91cf43b70"

      def install
        bin.install "azure-nuke"
      end
    end
  end
end
