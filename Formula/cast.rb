class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.35/cast-v0.16.35-darwin-amd64.tar.gz"
      sha256 "8d335ba30e3e9907575646f1a35c969bbbb48ec5ae47b2389b631928a5127cc9"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.16.35/cast-v0.16.35-darwin-arm64.tar.gz"
      sha256 "641d55f4a2df23c1d2f1ed85cf5a496b76a432c1902b55d4c226086b477ce1c1"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.35/cast-v0.16.35-linux-amd64.tar.gz"
      sha256 "7150ee8d0839877b7bb7c335b0d7d524bc470d9ca65fb43e1ea19b90558f586b"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.16.35/cast-v0.16.35-linux-arm64.tar.gz"
      sha256 "0a6d4c6b1e01dcfe7f66f131c080cec0d9abf715932b81facf672b26bdf9043b"

      def install
        bin.install "cast"
      end
    end
  end
end
