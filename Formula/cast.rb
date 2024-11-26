class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.15.4/cast-v0.15.4-darwin-amd64.tar.gz"
      sha256 "97e9957075e33b2ee3462744fb8c730acd7dbef665b09663ee8b7febf1fe3f2a"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.15.4/cast-v0.15.4-darwin-arm64.tar.gz"
      sha256 "59e7ca1a11c3b4cffab6ffea54722b078d0cb1c1934af422e1e90bf884c35b6b"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.15.4/cast-v0.15.4-linux-amd64.tar.gz"
      sha256 "2d0aeab103b18c987e5ee5ff5ec565a73e7279c0efe4429430bf11c96fac3a4d"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.15.4/cast-v0.15.4-linux-arm64.tar.gz"
      sha256 "d33e159f0612e7718da77817fea744887cc5971194bb84202d570098dcc20f05"

      def install
        bin.install "cast"
      end
    end
  end
end
