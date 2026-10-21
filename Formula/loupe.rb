class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.22.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.22.0/loupe_1.22.0_darwin_arm64.tar.gz"
      sha256 "d73d7d199bb6cecc2fa5bffa7eb2d87992fd200fd79b8b69b58578ef1c26c1f3"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.22.0/loupe_1.22.0_darwin_amd64.tar.gz"
      sha256 "613947b9d6f8a9d1e4e934bcd9500a17234abb25c3ef83315349585ddbe26218"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.22.0/loupe_1.22.0_linux_arm64.tar.gz"
      sha256 "c1180739d469e288b8e48746c7b1f3143677470295413b5c42784663d1dd2ef7"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.22.0/loupe_1.22.0_linux_amd64.tar.gz"
      sha256 "13c6fd0209edc4a0604d5a07a77e0e67517aafcd5a1d4f300104b45cd8c7d07c"
    end
  end

  def install
    bin.install "loupe"
    libexec.install "Live review.app" if OS.mac?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
    assert_path_exists libexec/"Live review.app" if OS.mac?
  end
end
