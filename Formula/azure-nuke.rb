class AzureNuke < Formula
  desc "Remove all the resources from an Azure tenant"
  homepage "https://ekristen.github.io/azure-nuke/"
  version "1.0.0-beta.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-beta.13/azure-nuke-v1.0.0-beta.13-darwin-amd64.tar.gz"
      sha256 "b79fcd4dc40401752d0335fa36a51b208789b156e85ebf4ff014a2c33f1cc206"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-beta.13/azure-nuke-v1.0.0-beta.13-darwin-arm64.tar.gz"
      sha256 "920520e0b026e730495dfe614db8ee3bdcbb6271e90a5c0dcbd7d8869208d8c1"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-beta.13/azure-nuke-v1.0.0-beta.13-linux-amd64.tar.gz"
      sha256 "060036cfdb925a87339a2e9b36487a14514a3d1efdae9891c7a73cbe8c87251f"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-beta.13/azure-nuke-v1.0.0-beta.13-linux-arm7.tar.gz"
      sha256 "927d06dad0358e9020474966971edc989bc43c1fb40d7748e4ebdbd5c36a5cdd"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.0.0-beta.13/azure-nuke-v1.0.0-beta.13-linux-arm64.tar.gz"
      sha256 "be8ba3a9e4f13739b18bb59fabb5a47846d448b549b0e33ca3f140771a9f8fed"

      def install
        bin.install "azure-nuke"
      end
    end
  end
end
