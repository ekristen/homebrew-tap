class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.27/cast-v0.14.27-darwin-amd64.tar.gz"
      sha256 "f162369f2bba4e190216d1bbc78ee4096c2d0d4632fc5c4111cbd3c41e52b81b"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.27/cast-v0.14.27-darwin-arm64.tar.gz"
      sha256 "2a8917434570452322aaa1e6513a560ec5a1e7a1423b57f1b62d9ef0769e12e1"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.27/cast-v0.14.27-linux-amd64.tar.gz"
      sha256 "b3026de634f0b0310f3e26b0c971eb2180203690559f1a4004efdafa0dea93e9"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.27/cast-v0.14.27-linux-arm64.tar.gz"
      sha256 "004f39026b2a4ac004593d77cfc17e4e36bfe37f2604d4bf3c0273abec1e2d9f"

      def install
        bin.install "cast"
      end
    end
  end
end
