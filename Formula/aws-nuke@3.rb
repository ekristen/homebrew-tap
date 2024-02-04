# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AwsNuke < Formula
  desc "Remove all the resources from an AWS account. "
  homepage "https://ekristen.github.io/aws-nuke/"
  version "v3.0.0-beta.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.9/aws-nuke-v3.0.0-beta.9-darwin-amd64.tar.gz"
      sha256 "0abd7f972852a24cede53f11bd7b4999bdbc335e5646a24d3d166d0d12a711b4"

      def install
        bin.install "aws-nuke"
        bash_completion.install "completions/aws-nuke.bash" => "aws-nuke"
        zsh_completion.install "completions/aws-nuke.zsh" => "_aws-nuke"
        fish_completion.install "completions/aws-nuke.fish"
        man1.install "manpages/aws-nuke.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.9/aws-nuke-v3.0.0-beta.9-darwin-arm64.tar.gz"
      sha256 "346247091b687976b8f29f1015256abfc9647d72fd53e24e425be2ac01848398"

      def install
        bin.install "aws-nuke"
        bash_completion.install "completions/aws-nuke.bash" => "aws-nuke"
        zsh_completion.install "completions/aws-nuke.zsh" => "_aws-nuke"
        fish_completion.install "completions/aws-nuke.fish"
        man1.install "manpages/aws-nuke.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.9/aws-nuke-v3.0.0-beta.9-linux-amd64.tar.gz"
      sha256 "66be2970ecd6bef5500d87eb708beecf0a862384b45988eb0873420d1441e194"

      def install
        bin.install "aws-nuke"
        bash_completion.install "completions/aws-nuke.bash" => "aws-nuke"
        zsh_completion.install "completions/aws-nuke.zsh" => "_aws-nuke"
        fish_completion.install "completions/aws-nuke.fish"
        man1.install "manpages/aws-nuke.1.gz"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.9/aws-nuke-v3.0.0-beta.9-linux-arm7.tar.gz"
      sha256 "2fe2dd798785b619f413c10f8ae5712fa1a0b0ccb85cf6355230c88c9b03d5f9"

      def install
        bin.install "aws-nuke"
        bash_completion.install "completions/aws-nuke.bash" => "aws-nuke"
        zsh_completion.install "completions/aws-nuke.zsh" => "_aws-nuke"
        fish_completion.install "completions/aws-nuke.fish"
        man1.install "manpages/aws-nuke.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/aws-nuke/releases/download/v3.0.0-beta.9/aws-nuke-v3.0.0-beta.9-linux-arm64.tar.gz"
      sha256 "5abf11f5a6faa815c0eee20168eec060592ef0f38e710bdee58c54f307db481f"

      def install
        bin.install "aws-nuke"
        bash_completion.install "completions/aws-nuke.bash" => "aws-nuke"
        zsh_completion.install "completions/aws-nuke.zsh" => "_aws-nuke"
        fish_completion.install "completions/aws-nuke.fish"
        man1.install "manpages/aws-nuke.1.gz"
      end
    end
  end
end
