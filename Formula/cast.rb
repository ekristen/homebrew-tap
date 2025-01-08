class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.15.10/cast-v0.15.10-darwin-amd64.tar.gz"
      sha256 "43c64545f9d4ec8f0f87e82a7f33c16ad9f09eae80c390f68730474674623085"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.15.10/cast-v0.15.10-darwin-arm64.tar.gz"
      sha256 "6bb485debd9affe3b8af848e31a44eeaa978968a97de1b92cd5f0d2726f703dd"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.15.10/cast-v0.15.10-linux-amd64.tar.gz"
      sha256 "35ebbcdfa1b5668754efcef5a4176c578eb0dfa8ab149252f3e1c5c4f0179043"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.15.10/cast-v0.15.10-linux-arm64.tar.gz"
      sha256 "412f9cffa4157e443d018f3236d996d3cdc48d15500fbfc2859545fa9a40490a"

      def install
        bin.install "cast"
      end
    end
  end
end
