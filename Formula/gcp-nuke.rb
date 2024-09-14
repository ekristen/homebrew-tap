class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.9/gcp-nuke-v1.4.9-darwin-amd64.tar.gz"
      sha256 "56effae80a901fde90c0da9c3d2acb684a21d4d325195834ce26c112af2fc2f8"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.9/gcp-nuke-v1.4.9-darwin-arm64.tar.gz"
      sha256 "5e7c2b1532f20ad00c5bd2743f86785f202cfa8724e94c1c59bb81a70c1eb72c"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.9/gcp-nuke-v1.4.9-linux-amd64.tar.gz"
      sha256 "04ef97a6aca8054951e16a83458df80c5daa504cb108f0d0a84cb5c6c8705df8"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.4.9/gcp-nuke-v1.4.9-linux-arm64.tar.gz"
      sha256 "94968f38de82d647d911177165760e6948d06f59d01d66b5c42de8508f0b0578"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
