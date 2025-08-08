class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.24/cast-v0.16.24-darwin-amd64.tar.gz"
      sha256 "8474c51b41219384aa27b401092429deb99da6abfa76c76342cdb596f1ebf366"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.16.24/cast-v0.16.24-darwin-arm64.tar.gz"
      sha256 "35e895113799906b5e3070aad330fa78f3700789fde31f315e1cf4ef363416ac"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.24/cast-v0.16.24-linux-amd64.tar.gz"
      sha256 "a9f1c4980c1039db1a44af88e62b32b7d8efa8179fbd82164818c63d374983ac"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.16.24/cast-v0.16.24-linux-arm64.tar.gz"
      sha256 "3e306752f06f00310a80bde3a03b05af79b1a1c23a166e7dd400ef7247daf49d"

      def install
        bin.install "cast"
      end
    end
  end
end
