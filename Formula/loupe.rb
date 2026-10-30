class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.30.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.30.0/loupe_1.30.0_darwin_arm64.tar.gz"
      sha256 "00061723638beca8d711bf44225dcc36ccc72c2b67e0e0cce0e0cabbd3ff346b"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.30.0/loupe_1.30.0_darwin_amd64.tar.gz"
      sha256 "07012beebfb2d5919e7851dacce591db1eaa27fafe4acb279e8215064fb4084c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.30.0/loupe_1.30.0_linux_arm64.tar.gz"
      sha256 "1269ccca0e8a6fa4cedc52c018fcd06537862aa9c5e7c5367318c588ece4c70b"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.30.0/loupe_1.30.0_linux_amd64.tar.gz"
      sha256 "2374f45d7a3ab42540891afcc94ed799357e80f3b709dbfc6e07f37c531eedcb"
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
