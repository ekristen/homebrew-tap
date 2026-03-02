class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v1.0.0/cast-v1.0.0-darwin-amd64.tar.gz"
      sha256 "109923922946b22fb7664acf840b8e2be6500afab85013932dedb33b48463566"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v1.0.0/cast-v1.0.0-darwin-arm64.tar.gz"
      sha256 "422618487dadaf0024f187dcf76c1acdb47846cb0593e7075ef42acf7b8e21b0"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v1.0.0/cast-v1.0.0-linux-amd64.tar.gz"
      sha256 "5386d6dda443a15376be0389eec5eaef4f76a509c7cbea7b51a9df47b78e5dbd"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v1.0.0/cast-v1.0.0-linux-arm64.tar.gz"
      sha256 "665f0c1bc323ef88ccc985a18395f309252b8e10614ea2363557cd525d4189f1"

      def install
        bin.install "cast"
      end
    end
  end
end
