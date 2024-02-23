class Cast < Formula
  desc "Cast is a tool to help you configure and install custom linux distributions"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.16/cast-v0.14.16-darwin-amd64.tar.gz"
      sha256 "e6009fc0ff1d23a44e9fd5c8f15546c0b473bc252e4fa69c655b53cdc1bdb89c"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.16/cast-v0.14.16-darwin-arm64.tar.gz"
      sha256 "11622de4cd3e33cdd9a84fc7edeffa1ea04566c17c0d33fcda427ce581031be2"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.16/cast-v0.14.16-linux-amd64.tar.gz"
      sha256 "4df24975786cb1f410e38870112ff3c684a4a3d2088ffafc72b1269f6f1e820b"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.16/cast-v0.14.16-linux-arm64.tar.gz"
      sha256 "b8e1b572423ce65db035789bf24a3cec8d403d081ec157bc9b6f91ed3ec929f5"

      def install
        bin.install "cast"
      end
    end
  end
end
