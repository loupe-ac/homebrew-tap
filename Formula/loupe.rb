class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.17.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.17.0/loupe_1.17.0_darwin_arm64.tar.gz"
      sha256 "8b69bdf7ed282876141111465b324c202bc3944a53b00cc6af4d031738bc816c"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.17.0/loupe_1.17.0_darwin_amd64.tar.gz"
      sha256 "eb66550548cd8329b09f5d36dd0f290d6fd9c2449d4e157f532a3b2dd2f18c20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.17.0/loupe_1.17.0_linux_arm64.tar.gz"
      sha256 "c99816cdcb775177145b8c19d95841254826bfc30311df303ad74ed1b0d9349b"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.17.0/loupe_1.17.0_linux_amd64.tar.gz"
      sha256 "b99ff7b7e840e2625ad2b477df364fdb452e9b33ed505208e2225e39119c034f"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
