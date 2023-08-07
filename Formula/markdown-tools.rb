class MarkdownTools < Formula
  desc "Collection of tools for working with markdown files"
  homepage "https://github.com/lubieniebieski/markdown-tools"
  url "https://github.com/lubieniebieski/markdown-tools/archive/v0.2.tar.gz"
  sha256 "532832fa748ea67740abe6e5a37926ba5b2acbf9e090be7440d7ffb120d86a63"
  license "MIT"

  bottle do
    root_url "https://github.com/lubieniebieski/homebrew-tools/releases/download/markdown-tools-0.2"
    sha256 cellar: :any_skip_relocation, ventura:      "1f8fe9e113f8a611f11b3963681e4b1a35fce84e393d0da8fb11bbd4a9aa08d1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "02262af334defa54dd1f8fe7dc1deddcc0c6c871b289b2056e958cbff8e3dc6b"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/markdown-tools", "--version"
  end
end
