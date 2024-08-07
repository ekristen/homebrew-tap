class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.43/cast-v0.14.43-darwin-amd64.tar.gz"
      sha256 "4f339095435f7e34a40bbab48f3ee1dea78d4a9f225386e1e944e2d5b70450b0"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.43/cast-v0.14.43-darwin-arm64.tar.gz"
      sha256 "ff55c27040dd58b1a6da15a1ba13a77dafb68362be33b7a3b1c9b8ec65c75b47"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.43/cast-v0.14.43-linux-amd64.tar.gz"
      sha256 "6655b7063c11aaa7901d759feab7cd9d9d9b2fe0d485d9915d94ce484f893cda"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.43/cast-v0.14.43-linux-arm64.tar.gz"
      sha256 "36763951647de475d6e30c7d53769a1fe878e5b0c279a2d49e5dbd09474244df"

      def install
        bin.install "cast"
      end
    end
  end
end
