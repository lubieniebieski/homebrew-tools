class MarkdownTools < Formula
  desc "A collection of tools for working with markdown files"
  homepage "https://github.com/lubieniebieski/markdown-tools"
  url "https://github.com/lubieniebieski/markdown-tools/archive/v0.1-alpha.tar.gz"
  sha256 "42ea39305081700da89de4ebc657a35fe91313964f888f84f7f991f4d4582ef8"
  license "MIT"
  version "0.1-alpha"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/markdown-tools", "--version"
  end
end
