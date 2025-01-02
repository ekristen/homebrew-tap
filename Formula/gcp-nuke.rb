class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.0.tar.gz"
      sha256 "3bb2507b053a8980925a3ab02211451dbfb4fc8b8a4abf2ac9224dd4406bb594"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.0/gcp-nuke-v1.7.0-darwin-arm64.tar.gz"
      sha256 "6c4caac37e14ea0bff04fea0c5c17342d86240f1c302230ed194af39485803af"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.0/gcp-nuke-v1.7.0-linux-amd64.tar.gz"
      sha256 "a38280c1877b052335a1fca7384d9e8e6e7d3e27acf75ac6b38b7f399b2868f1"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.0/gcp-nuke-v1.7.0-linux-arm64.tar.gz"
      sha256 "63601d8b342ed2dbca946cb7373d55b217a819d04803205f13df7c1607bb6c7c"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
