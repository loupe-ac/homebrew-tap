class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.19.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.19.0/loupe_1.19.0_darwin_arm64.tar.gz"
      sha256 "dffb0128af80924dde1b97d272f247a34250b7f936363d099021b99f4013ba1e"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.19.0/loupe_1.19.0_darwin_amd64.tar.gz"
      sha256 "2586e7da667edbd9e0b7ccf21466529f2b37db95e36fdc2e0c7f8586ef19adb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.19.0/loupe_1.19.0_linux_arm64.tar.gz"
      sha256 "c799304a7fd9b9361782a398064e8b1e96e58499bb17d77d1d8f51beccb69029"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.19.0/loupe_1.19.0_linux_amd64.tar.gz"
      sha256 "63c610570d038bf2a2888b1f3c5f0a13e0f3dba28a72888f16c2ca3cffdf0151"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
