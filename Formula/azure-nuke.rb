class AzureNuke < Formula
  desc "Remove all the resources from an Azure tenant."
  homepage "https://ekristen.github.io/azure-nuke/"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v0.15.0/azure-nuke_darwin_amd64.tar.gz"
      sha256 "014acd0de7977dce8c416a271444a78eb22115031955e7b9ff1b4773e29718c0"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/azure-nuke/releases/download/v0.15.0/azure-nuke_darwin_arm64.tar.gz"
      sha256 "3711dc26339ede5ca2145bd9a126beeaae3365c48a6d3dd7e31425c685972cb6"

      def install
        bin.install "azure-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/azure-nuke/releases/download/v0.15.0/azure-nuke_linux_amd64.tar.gz"
      sha256 "9e08cecd901ae5689242189bdb3d0e77bee899f53d1011e42bd6863fc963d047"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v0.15.0/azure-nuke_linux_arm7.tar.gz"
      sha256 "696ccca0ec03dfac77166652feb724dc2ea23d4549c50d94a138210e23af0200"

      def install
        bin.install "azure-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/azure-nuke/releases/download/v0.15.0/azure-nuke_linux_arm64.tar.gz"
      sha256 "3b4a111b60a2de18ae4bb2483b7e164456d622cf518b4818e3aee00175bb465a"

      def install
        bin.install "azure-nuke"
        bash_completion.install "completions/azure-nuke.bash" => "azure-nuke"
        zsh_completion.install "completions/azure-nuke.zsh" => "_azure-nuke"
        fish_completion.install "completions/azure-nuke.fish"
        man1.install "manpages/azure-nuke.1.gz"
      end
    end
  end
end
