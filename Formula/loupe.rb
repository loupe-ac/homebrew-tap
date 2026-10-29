class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.27.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.27.0/loupe_1.27.0_darwin_arm64.tar.gz"
      sha256 "4335f6fb5dd39ccbe427ebcab5b89562a261f80aef3d6eaa74df24b02ac95e1c"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.27.0/loupe_1.27.0_darwin_amd64.tar.gz"
      sha256 "4ddd77368e4942ff272c7249d1c3dfba3dce3f5cdbc540e378309cb73a71488a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.27.0/loupe_1.27.0_linux_arm64.tar.gz"
      sha256 "f41fa7483c651f26ca21709cf606cbafd7b4d7a5479c1a1508b6ab4c95b573bb"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.27.0/loupe_1.27.0_linux_amd64.tar.gz"
      sha256 "77beb4fb4a1bd069169c6e42259d75c62efc04898c0d0f7953bd488c6b9f68b8"
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
