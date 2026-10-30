class Bogyman < Formula
  desc "Which of your agent sessions needs you, on what, and for how long"
  homepage "https://github.com/soleo/bogyman-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/soleo/bogyman-cli/releases/download/v0.2.0/bogyman-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "c71e9efa6ae4a0324a74f601e7cae73fd7a8a2328ba0e18da463430513227756"
    end
    on_intel do
      url "https://github.com/soleo/bogyman-cli/releases/download/v0.2.0/bogyman-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "0c50979008851f8d5faaf1877913b5b2aacf42400ae6e16e8c762990454d2274"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/soleo/bogyman-cli/releases/download/v0.2.0/bogyman-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b213e8a44930476031d34b81bcfc43407f52ef340de6487358d5953d707dac1"
    end
    on_intel do
      url "https://github.com/soleo/bogyman-cli/releases/download/v0.2.0/bogyman-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9742fd1c5a829864f10a4e6ea0a7e8466796e913bb39af5fe1294a7d1e2b8451"
    end
  end

  def install
    bin.install "bogyman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bogyman --version")
  end
end
