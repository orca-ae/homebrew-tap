# Generated from the checksums of ork v0.5.0 by orca-ae/orca-cli's release workflow.
class Ork < Formula
  desc "CLI to manage & interact with resources in Orca Agent Engine"
  homepage "https://runorca.ai"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/orca-ae/orca-cli/releases/download/v0.5.0/ork_v0.5.0_darwin_arm64.tar.gz"
      sha256 "c5fadd6394bf421b4a881237e69f32ed09a512a58cd1cb20de18dd301af2a3e8"
    end
    on_intel do
      url "https://github.com/orca-ae/orca-cli/releases/download/v0.5.0/ork_v0.5.0_darwin_amd64.tar.gz"
      sha256 "b54045c664e4d9704a453cc8239d0ac222a621dbb8fe81f871fd4d98c43c2a04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orca-ae/orca-cli/releases/download/v0.5.0/ork_v0.5.0_linux_arm64.tar.gz"
      sha256 "bfaf8ac7e09ef4e18dab3c9ef4b39fa9919190cea4f6d72e2e7347f001fddddc"
    end
    on_intel do
      url "https://github.com/orca-ae/orca-cli/releases/download/v0.5.0/ork_v0.5.0_linux_amd64.tar.gz"
      sha256 "4296c34a8bba0619dbbdfe9eeabf0800f42583ed3db6c4e08456f40ea1f67ddb"
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
