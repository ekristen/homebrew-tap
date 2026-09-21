class AwsNuke < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"
  version "3.68.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/archive/refs/tags/v3.68.2.tar.gz"
      sha256 "d50b29d6b2f0a90f093b67dc426251576e985405fe0b7468a3fbfcffea5d50ef"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.68.2/aws-nuke-v3.68.2-darwin-arm64.tar.gz"
      sha256 "352c44866904f35dd1733618f2a7e96095873ec55f1760d8ce8ce20979393ffe"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.68.2/aws-nuke-v3.68.2-linux-amd64.tar.gz"
      sha256 "549957c1cc3525b12950ca27c60bf4fe43448faa8634d0f641e6c6d0545c583d"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.68.2/aws-nuke-v3.68.2-linux-arm7.tar.gz"
      sha256 "cdba3b277c112119bbd98cbe9ae394bd98f256c14d05680994f44ae6f18d3eaf"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.68.2/aws-nuke-v3.68.2-linux-arm64.tar.gz"
      sha256 "e115512351786b35e847a0128f797b3b34ee874f584afdcf9e22a605f8fe219f"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
