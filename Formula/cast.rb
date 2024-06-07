class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.31/cast-v0.14.31-darwin-amd64.tar.gz"
      sha256 "4e9f1b43101005fa30504133063184916102ccfa790827388c4d7995f091d62d"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.31/cast-v0.14.31-darwin-arm64.tar.gz"
      sha256 "53caa4325a73e54ab8162b501050374dad531d18d6096f534ddf0ec26444a227"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.31/cast-v0.14.31-linux-amd64.tar.gz"
      sha256 "8e0d2c0338e3e26d398b91c1c2c4ae5c08714696775b4fd77a78a79ebc9aee01"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.31/cast-v0.14.31-linux-arm64.tar.gz"
      sha256 "761fba4e2387cd4823288b9423164e3f47cee0b5829956ac2c8b15a44261a93f"

      def install
        bin.install "cast"
      end
    end
  end
end
