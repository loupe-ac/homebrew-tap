class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.18.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.18.0/loupe_1.18.0_darwin_arm64.tar.gz"
      sha256 "901c02335343906ad093c3e3cfa5524f396dc867f7e047f83213c818061df482"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.18.0/loupe_1.18.0_darwin_amd64.tar.gz"
      sha256 "a89c4fd683f401fa0d280a329bf56120b9487be8a7b6e4eaeec03ff7eb10da5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.18.0/loupe_1.18.0_linux_arm64.tar.gz"
      sha256 "0360c952c792f09145d1134bbae032f0c3e3cca2219850e21bfbf8f6cb72bb02"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.18.0/loupe_1.18.0_linux_amd64.tar.gz"
      sha256 "0c595b115e6ca980630f28d97b646a88b7232d73238e31bae6d5b2205986ce55"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
