class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.20.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.20.0/loupe_1.20.0_darwin_arm64.tar.gz"
      sha256 "89e0af3285ebee429ba8922bdf214f576abcbc1e6c3d1b3ff577b7178ee82a63"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.20.0/loupe_1.20.0_darwin_amd64.tar.gz"
      sha256 "3bac065d1dcb031ac52285d86ceff5d304492f2e62eb09d88141e4bd0931e5a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.20.0/loupe_1.20.0_linux_arm64.tar.gz"
      sha256 "ae84838c92ec02716ccb3724198b94e0d1d9db43ed565bdac25887054d2d0659"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.20.0/loupe_1.20.0_linux_amd64.tar.gz"
      sha256 "434736a2828f7663b8a97915753267fa773f74f913843a8902739c55159bd50a"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
