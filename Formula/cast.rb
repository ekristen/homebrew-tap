class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.32/cast-v0.16.32-darwin-amd64.tar.gz"
      sha256 "2dbf4a4718b3c42925e8c98e30ad476089855981734f87200dd08f462f7597ae"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.16.32/cast-v0.16.32-darwin-arm64.tar.gz"
      sha256 "656227d89c857b2cf5caf2365d5949a8a1a88247f1e2163f831ddaa6dffc43ae"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.32/cast-v0.16.32-linux-amd64.tar.gz"
      sha256 "60496016417d065a3d42fd39158660142bbf47aa084515ea4c973ed22f5f549d"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.16.32/cast-v0.16.32-linux-arm64.tar.gz"
      sha256 "bb381821bb11263b030bc0371ad8b9748065cdb517fb137a7b6ceba3b2f91d29"

      def install
        bin.install "cast"
      end
    end
  end
end
