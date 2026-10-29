class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.25.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.25.0/loupe_1.25.0_darwin_arm64.tar.gz"
      sha256 "b8c879aed5731e941140cefa286ee6273929985533aa318acc1b4c211f474d04"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.25.0/loupe_1.25.0_darwin_amd64.tar.gz"
      sha256 "b4c0af23d9584addbbdfc676f0ff813b4773062ea3139c1fbba3f5f5fabd4baf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.25.0/loupe_1.25.0_linux_arm64.tar.gz"
      sha256 "78912256e3192c1a5da11a09f779754499129e3e01d5a7c0389a05d909744a29"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.25.0/loupe_1.25.0_linux_amd64.tar.gz"
      sha256 "a56e2d09c2a60e370e930a2fc518d506f84c6be89caf9c680cb9da5781142aa3"
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
