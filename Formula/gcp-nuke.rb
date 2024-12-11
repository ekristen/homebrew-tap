class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.6.7.tar.gz"
      sha256 "956b038947ce7d987bf46814f5c9798138c6ea96f42aa507304cf3b41d11606b"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.7/gcp-nuke-v1.6.7-darwin-arm64.tar.gz"
      sha256 "72e2f28db3b6c43d549614bf3075a98e58a85da9779466e5e467d480c15606ee"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.7/gcp-nuke-v1.6.7-linux-amd64.tar.gz"
      sha256 "78847afc75553024c9e844d69179cb75c9daa6d536d0bebbcacc493c40c79ef5"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.6.7/gcp-nuke-v1.6.7-linux-arm64.tar.gz"
      sha256 "5822f7542c475ea69442278f13d5cb232b015c4efe83b7de07e52a0d976b288d"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
