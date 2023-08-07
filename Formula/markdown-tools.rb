class MarkdownTools < Formula
  desc "Collection of tools for working with markdown files"
  homepage "https://github.com/lubieniebieski/markdown-tools"
  url "https://github.com/lubieniebieski/markdown-tools/archive/v0.2.tar.gz"
  sha256 "532832fa748ea67740abe6e5a37926ba5b2acbf9e090be7440d7ffb120d86a63"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/markdown-tools", "--version"
  end
end
