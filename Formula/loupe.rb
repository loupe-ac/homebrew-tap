class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.15.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.15.0/loupe_1.15.0_darwin_arm64.tar.gz"
      sha256 "3feb132e8e79038dfa84cc6ae7c7268a0ec0fa4f94a7f79bdaea843bfe286cfb"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.15.0/loupe_1.15.0_darwin_amd64.tar.gz"
      sha256 "58b364b3be4d02d8ba55da7937ca8d96cb7511fbef1dae1f06c9fc147abe537d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.15.0/loupe_1.15.0_linux_arm64.tar.gz"
      sha256 "c010e0326fd08615632639a0a902f46a0e0b6ac644aa5ed6d2751ab244a5f61c"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.15.0/loupe_1.15.0_linux_amd64.tar.gz"
      sha256 "93935c6e5861b53e5847f9780a6a744d76b8b27eca4800173ef551486a1f8e46"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
