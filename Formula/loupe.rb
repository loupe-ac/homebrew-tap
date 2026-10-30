class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.28.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.28.0/loupe_1.28.0_darwin_arm64.tar.gz"
      sha256 "dcc54358b0e8d4a3bfa77e7b9eddc9599944a7036e66238e6f98588672071b4b"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.28.0/loupe_1.28.0_darwin_amd64.tar.gz"
      sha256 "e03aa238fcaec9d8cac82041d26b63edf8147577a9726c3ddd92f428fba22b3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.28.0/loupe_1.28.0_linux_arm64.tar.gz"
      sha256 "935ed4b983de045fea00d0c516cbf6b33b6ebc017763438de543d58c55147af1"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.28.0/loupe_1.28.0_linux_amd64.tar.gz"
      sha256 "71a82ea904948b15775880d3c3955e78fce23476bf359e87cad123dbc2f56c1f"
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
