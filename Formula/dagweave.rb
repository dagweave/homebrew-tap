# Written by scripts/homebrew-formula.sh in dagweave/local on every release, so edit that instead.
class Dagweave < Formula
  desc "Run Argo Workflows locally"
  homepage "https://dagweave.com/local/"
  version "0.1.0-rc.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.6/dagweave-darwin-arm64"
      sha256 "9b2b2eccc83ccac224de4efaad4f66104fad3b325876dde203826d432f91d4d3"
    end
    on_intel do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.6/dagweave-darwin-amd64"
      sha256 "43e5fac7e41a72882d93f6f501d4df44a4d603ba5be2872a805fdebb3e1654e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.6/dagweave-linux-arm64"
      sha256 "8dea9c97dd2cabb08741767e790a5f8a91de5297fe1a4e86246c757334a3ac61"
    end
    on_intel do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.6/dagweave-linux-amd64"
      sha256 "617dbfe3e314f01fd60e0edd1c2d65fb82473dae635e8bfea7dc392f07f1ef37"
    end
  end

  def install
    bin.install Dir["dagweave-*"].fetch(0) => "dagweave"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dagweave version")
  end
end
