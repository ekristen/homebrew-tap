class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.49/cast-v0.14.49-darwin-amd64.tar.gz"
      sha256 "16f1bd2f6032798ef3c32d2821376c833137b8f99f50143b0824a1902749b66b"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.49/cast-v0.14.49-darwin-arm64.tar.gz"
      sha256 "5e1646d0d03bae27305c19d301b367db8152ace354e844267d3ffb4cd2a3307e"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.49/cast-v0.14.49-linux-amd64.tar.gz"
      sha256 "9288092512313f44fed836bde98c05df61da42adc007a01742662fd7fe95d69a"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.49/cast-v0.14.49-linux-arm64.tar.gz"
      sha256 "a116d423432be6cb3de8001b8a19378fcd572ad0f7e00e67ce731bce36ddcd8f"

      def install
        bin.install "cast"
      end
    end
  end
end
