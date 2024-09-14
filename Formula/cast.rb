class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.47/cast-v0.14.47-darwin-amd64.tar.gz"
      sha256 "7880ee1d64ccb225d412bdab040e5deed2f15f1f282952db8fe88391a3706332"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.47/cast-v0.14.47-darwin-arm64.tar.gz"
      sha256 "4dc2d556bc60478872b97dc8767bb08eb0c0803e1b19cd1d4e46dd1340e716a0"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.47/cast-v0.14.47-linux-amd64.tar.gz"
      sha256 "fdf6af2e544e2ae5f5b4c475ae4763a288be2395407a5d466c92a6584b4c63a1"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.47/cast-v0.14.47-linux-arm64.tar.gz"
      sha256 "1b749b57d38620adca9e34578b82c3940783cdc4a396f33e1ac26894c08493ba"

      def install
        bin.install "cast"
      end
    end
  end
end
