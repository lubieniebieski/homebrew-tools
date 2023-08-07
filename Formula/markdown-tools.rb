class MarkdownTools < Formula
  desc "Collection of tools for working with markdown files"
  homepage "https://github.com/lubieniebieski/markdown-tools"
  url "https://github.com/lubieniebieski/markdown-tools/archive/refs/tags/v0.2.tar.gz"
  sha256 "532832fa748ea67740abe6e5a37926ba5b2acbf9e090be7440d7ffb120d86a63"
  license "MIT"

  bottle do
    root_url "https://github.com/lubieniebieski/homebrew-tools/releases/download/markdown-tools-0.1-alpha"
    sha256 cellar: :any_skip_relocation, ventura:      "d612b44f9ba8dc3a2e3e4a7d0158a8d1827e2453c309f41c0bbf152afecafa9f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0c42091a78765892ec5bdb99fb0f0e1d2d59722d3e1a6330c6f0a9d7c549d0ad"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/markdown-tools", "--version"
  end
end
