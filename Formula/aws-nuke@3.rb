class AwsNukeAT3 < Formula
  desc "Remove all the resources from an AWS account"
  homepage "https://ekristen.github.io/aws-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.55/aws-nuke-v3.0.0-beta.55-darwin-amd64.tar.gz"
      sha256 "c71a39a0ea2ef845ea3cc4bb7c164d276073ce6984de97401da25e9dd2b42f61"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.55/aws-nuke-v3.0.0-beta.55-darwin-arm64.tar.gz"
      sha256 "1216241da89c99122766a2121bd22de0a95c7cfa6489ce0fc755f78720237ce6"

      def install
        bin.install "aws-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.55/aws-nuke-v3.0.0-beta.55-linux-amd64.tar.gz"
      sha256 "7c17fe5df2bc13d7202b58443fb65026805682da597742670b6ed255fd427b5b"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.55/aws-nuke-v3.0.0-beta.55-linux-arm7.tar.gz"
      sha256 "807768c857d32e2abdfc3889472dbc3174616a4da221fc8cc42c46e76077f2bd"

      def install
        bin.install "aws-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.55/aws-nuke-v3.0.0-beta.55-linux-arm64.tar.gz"
      sha256 "311ca61add43543213da9f769b36efd84ac91149887f9bc0946494cbbf9668ea"

      def install
        bin.install "aws-nuke"
      end
    end
  end
end
