class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.24/cast-v0.14.24-darwin-amd64.tar.gz"
      sha256 "52dcd87bc665a7c4d38c6252099059ebbe2ac0dbe5c27d8eafeb98b4b61cef03"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.24/cast-v0.14.24-darwin-arm64.tar.gz"
      sha256 "3aa07410b0bc15de7149e845ddfd98571d045042b21e3f77d726e908219fb0ea"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.24/cast-v0.14.24-linux-amd64.tar.gz"
      sha256 "187e34bd6a1c0665f89dded1dc57db4f545238a149c6e17e506184363baf80bd"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.24/cast-v0.14.24-linux-arm64.tar.gz"
      sha256 "1e98fb012bee6f3cb542a5e5442205acc8af82c78b1b2e9752fbff27bfdbc0dd"

      def install
        bin.install "cast"
      end
    end
  end
end
