class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.11/gcp-nuke-v1.4.11-darwin-amd64.tar.gz"
      sha256 "8f02e345e55b3331bc605d513522fc57972bb8f0278e26f8820a5637d419c7ec"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.11/gcp-nuke-v1.4.11-darwin-arm64.tar.gz"
      sha256 "984602e4545a4d90c6215fa7cc7632be262787ebc344693e532b5e8d39f02a49"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.11/gcp-nuke-v1.4.11-linux-amd64.tar.gz"
      sha256 "d15bbab984afe3344d4091af8746455977f916e6c5d2336e225a521369b70d70"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.11/gcp-nuke-v1.4.11-linux-arm64.tar.gz"
      sha256 "0fc59446d056d2ef0497903802ddb0e684f4bf7a35f1ba13e33d57e3403a4ba0"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
