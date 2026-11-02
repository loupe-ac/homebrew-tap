class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.34.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.34.1/loupe_1.34.1_darwin_arm64.tar.gz"
      sha256 "501c61f1902ec4b3b3e44948d8c95ab3726b3080fe4d47e16e0fdbc4d1312ed4"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.34.1/loupe_1.34.1_darwin_amd64.tar.gz"
      sha256 "b3a3c0bce09159d510cac0f952caee2284d928be6b97946aeaf55d9524da49e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.34.1/loupe_1.34.1_linux_arm64.tar.gz"
      sha256 "4ad50f19b4acf52c8fa246a80bb816f6834d19f2b8cdb87fa7fa77b6f9cd5bcf"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.34.1/loupe_1.34.1_linux_amd64.tar.gz"
      sha256 "086dc5ebd5c32fb1aede8665ea9f7849629d2ecaa9a3aa65b2644d0aa9c9d2fb"
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
