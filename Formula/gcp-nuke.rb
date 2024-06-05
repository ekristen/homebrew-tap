class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.16/gcp-nuke-v1.0.0-beta.16-darwin-amd64.tar.gz"
      sha256 "53dfda82e981f6d4340238c23b28977662d0d517278d6906738a3a2c7b40d369"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.16/gcp-nuke-v1.0.0-beta.16-darwin-arm64.tar.gz"
      sha256 "a0c88cf88eedfb2e1c56077dc65b96b7fac6b90c44b8c84622f034bc01aebb93"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.16/gcp-nuke-v1.0.0-beta.16-linux-amd64.tar.gz"
      sha256 "1a1b03abc94b478491b32003863c73008554ca3c03578fc0587ad040fffc76c1"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.16/gcp-nuke-v1.0.0-beta.16-linux-arm64.tar.gz"
      sha256 "caab8200deac28a61a68741795ea40f35b96d7dcc29df1c43c97e871c2fa3e31"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
