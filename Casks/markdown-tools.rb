cask "markdown-tools" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.2"
  sha256 "ae780cf5498da3bb3894edb603c95313ce4da5d7b63c6ae5217df86186b83a64"

  url "https://github.com/lubieniebieski/markdown-tools/releases/download/v#{version}/markdown-tools_v#{version}_macOS_#{arch}.tar.gz"
  name "markdown-tools"
  desc "Collection of tools for working with markdown files"
  homepage "https://github.com/lubieniebieski/markdown-tools"

  binary "markdown-tools"
end
