class MarkdownTools < Formula
  desc "Collection of tools for working with markdown files"
  homepage "https://github.com/lubieniebieski/markdown-tools"
  url "https://github.com/lubieniebieski/markdown-tools/archive/v0.3.tar.gz"
  sha256 "3b22ce3610746b8faa030926026a9b292d23e7f268c754b35895fa24c1a7b38e"
  license "MIT"

  bottle do
    root_url "https://github.com/lubieniebieski/homebrew-tools/releases/download/markdown-tools-0.3"
    sha256 cellar: :any_skip_relocation, ventura:      "e19cf4a839ff7ec9447befd0688add1e90afd52f7aa05d91d06cac2dd88ac81e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "71d6c89baa2b239c94565586e6bea15d339762df0bcda788fc4bcb7034651ca1"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/markdown-tools", "--version"
  end
end
