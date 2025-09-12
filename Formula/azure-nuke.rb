class AzureNuke < Formula
  desc "Remove all the resources from an Azure tenant"
  homepage "https://ekristen.github.io/azure-nuke/"
  version "1.2.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.2.5/azure-nuke-v1.2.5-darwin-amd64.tar.gz"
      sha256 "40774e72ae2200bbbbc098196acc219dcb680ade94bc8157e657e336153477fe"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.2.5/azure-nuke-v1.2.5-darwin-arm64.tar.gz"
      sha256 "141f1c839f7d61f8021ba0a6a03b2a7f45d5f83218a9afedce6047d7c8b2e8ee"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.2.5/azure-nuke-v1.2.5-linux-amd64.tar.gz"
      sha256 "e089570861d9c6f44f9d845b70da9999da7372b56eee2d39fd85aca6f464432b"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.2.5/azure-nuke-v1.2.5-linux-arm7.tar.gz"
      sha256 "cd35010c06d0c8afe32e3ea4f6411b39d301bbe4037a48e6a7c77f4c173e71c2"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v1.2.5/azure-nuke-v1.2.5-linux-arm64.tar.gz"
      sha256 "9952d220102d4e1ed573ea39d770f5c7645d537ab86709317d1fce9c200a5a59"

      def install
        bin.install "azure-nuke"
      end
    end
  end
end
