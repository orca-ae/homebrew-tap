# Generated from the checksums of ork v0.6.0 by orca-ae/orca-cli's release workflow.
class Ork < Formula
  desc "CLI to manage & interact with resources in Orca Agent Engine"
  homepage "https://runorca.ai"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/orca-ae/orca-cli/releases/download/v0.6.0/ork_v0.6.0_darwin_arm64.tar.gz"
      sha256 "4f619ab17d62cb2a8978b3dba0c8303f95db02f935776135d4f5fabbe57a20f4"
    end
    on_intel do
      url "https://github.com/orca-ae/orca-cli/releases/download/v0.6.0/ork_v0.6.0_darwin_amd64.tar.gz"
      sha256 "88e33467ccb4a786a01156c7dac493e14b874f51c6b12d19e0d59828aa74158c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orca-ae/orca-cli/releases/download/v0.6.0/ork_v0.6.0_linux_arm64.tar.gz"
      sha256 "3420742469b65a05fc8b2af0b2e2f430ef146161b10c3db5aa728f8eac0a8aa4"
    end
    on_intel do
      url "https://github.com/orca-ae/orca-cli/releases/download/v0.6.0/ork_v0.6.0_linux_amd64.tar.gz"
      sha256 "427a158b5e42f88cc4c171a1831a37da61b6917c5a7843971318080549a80a41"
    end
  end

  def install
    bin.install "ork"
    generate_completions_from_executable(bin/"ork", "completion")
  end

  test do
    assert_equal "ork version #{version}", shell_output("#{bin}/ork --version").strip
  end
end
