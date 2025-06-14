class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.13/cast-v0.16.13-darwin-amd64.tar.gz"
      sha256 "a49847039da130a5518db037a50a1eeaf0daac8773f54e208d1e1b3f1fa3808f"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.16.13/cast-v0.16.13-darwin-arm64.tar.gz"
      sha256 "54510b68519a06c133ddc2a3cb0ca2f71e1c493dd6649493d0603e7d47252ef6"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.13/cast-v0.16.13-linux-amd64.tar.gz"
      sha256 "7569f33cbf0e30f97146082f53de3efa97daafa0f223d936c04ceacaf7535a1a"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.16.13/cast-v0.16.13-linux-arm64.tar.gz"
      sha256 "961f38c74be0ec639ff694dfa65fe2c3207695b9cfcef72878832762c325354f"

      def install
        bin.install "cast"
      end
    end
  end
end
