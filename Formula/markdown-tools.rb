class MarkdownTools < Formula
  desc "Collection of tools for working with markdown files"
  homepage "https://github.com/lubieniebieski/markdown-tools"
  url "https://github.com/lubieniebieski/markdown-tools/archive/v0.4.1.tar.gz"
  sha256 "a6410fb5cd0d9981987bc802bcdebfc0e581dd5ed30a980ec9ea322b4b8312f4"
  license "MIT"

  bottle do
    root_url "https://github.com/lubieniebieski/homebrew-tools/releases/download/markdown-tools-0.4.1"
    sha256 cellar: :any_skip_relocation, ventura:      "236890a202b4fafa0560c908b0997d51dbe3bf93c657e5efd87e19410567d5f6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f23d694344aa145fc6820e34ad09c19d2451dd64f02a0ae0fb9632aefca69a47"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/markdown-tools", "--version"
  end
end
