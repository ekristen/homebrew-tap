class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.11/cast-v0.16.11-darwin-amd64.tar.gz"
      sha256 "df7b644acd7ee316efaa19ae2ee3c865a738a315afdbd51d7287aa2d73d97575"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.16.11/cast-v0.16.11-darwin-arm64.tar.gz"
      sha256 "5fa82775574d973ec0218b5d6d1a2fce0f9bafc68ec040105cb2d931bd86b21c"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.11/cast-v0.16.11-linux-amd64.tar.gz"
      sha256 "9fc54082e7adff4acd58b2e0f41bc619ce81df474fbc01a0c5fbc84ea9c404f1"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.16.11/cast-v0.16.11-linux-arm64.tar.gz"
      sha256 "0b5788cd11116d5bf6f32faf5d2088e13936b2d1b9cab6d63d57cf35fc249145"

      def install
        bin.install "cast"
      end
    end
  end
end
