class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.22.tar.gz"
      sha256 "7e95c3f7f4bf9bdae900afe9af8f4aec2750b6a0b40bde6dde77821a6841f275"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.22/gcp-nuke-v1.7.22-darwin-arm64.tar.gz"
      sha256 "cdffac602a9b05d58c0ad82f3228bac7c6e9e265416afc28e73e9ea93b7bdb9c"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.22/gcp-nuke-v1.7.22-linux-amd64.tar.gz"
      sha256 "e38a99080363aa30ca79945f011a70f7b6518317e37aad384a5cf2c8bf099c6f"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.22/gcp-nuke-v1.7.22-linux-arm64.tar.gz"
      sha256 "601c2f8ef44e9ea4ce24dbc5180d0a811c37974be5dafae86b10141e943dfc92"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
