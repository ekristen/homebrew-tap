class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.15.6/cast-v0.15.6-darwin-amd64.tar.gz"
      sha256 "86e7f8d0b67b7922dcebc049016e028a99158f955da32c5b8a9fc1e983759efb"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.15.6/cast-v0.15.6-darwin-arm64.tar.gz"
      sha256 "9c584ef004a7f0155faf1cd6547ae7f1da440fb4f913e3dbbd55ea7f2c878543"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.15.6/cast-v0.15.6-linux-amd64.tar.gz"
      sha256 "cf26c714675676a1db0790d31934a2ce860fe358489776523dc2adc47682a6d6"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.15.6/cast-v0.15.6-linux-arm64.tar.gz"
      sha256 "980334fdc7177d091adb61e346329956fb98d36ad5ca93e02942cbd435d576a0"

      def install
        bin.install "cast"
      end
    end
  end
end
