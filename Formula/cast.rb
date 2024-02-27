class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.21/cast-v0.14.21-darwin-amd64.tar.gz"
      sha256 "9e1c87a0e75a0fbf83d3ae4b48f59dc513d69f05dda477374f123659fa9eae75"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.21/cast-v0.14.21-darwin-arm64.tar.gz"
      sha256 "6f99e5806aa47e5813e8c1b2e654d6a7ae1e839748efcd85cc9c07cb94c0328f"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.21/cast-v0.14.21-linux-amd64.tar.gz"
      sha256 "627311a36b9b1d73e17bad50606ae139d73d739bdbddad139cf4c7c5823d5092"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.21/cast-v0.14.21-linux-arm64.tar.gz"
      sha256 "224f1baf76e9cdc4d8ccf2926e408447becb80c7aa0b62efd490a755c2c3598f"

      def install
        bin.install "cast"
      end
    end
  end
end
