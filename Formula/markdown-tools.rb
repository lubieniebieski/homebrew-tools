class MarkdownTools < Formula
  desc "Collection of tools for working with markdown files"
  homepage "https://github.com/lubieniebieski/markdown-tools"
  url "https://github.com/lubieniebieski/markdown-tools/archive/v0.3.tar.gz"
  sha256 "3b22ce3610746b8faa030926026a9b292d23e7f268c754b35895fa24c1a7b38e"
  license "MIT"

  bottle do
    root_url "https://github.com/lubieniebieski/homebrew-tools/releases/download/markdown-tools-0.2.1"
    sha256 cellar: :any_skip_relocation, ventura:      "892c78dcda9d2b7d74e983c8ceb00a5ea583d8ba311de325b98dee19a69b49ea"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4bc7988a1fa85b24e0d2818287d257e65076a283512c6742f930108c2d54e6aa"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/markdown-tools", "--version"
  end
end
