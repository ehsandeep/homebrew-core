class Katana < Formula
  desc "A next-generation crawling and spidering framework."
  homepage "https://github.com/projectdiscovery/katana"
  url "https://github.com/projectdiscovery/katana/archive/v0.0.2.zip"
  sha256 "4f43c156d597b55931a0833c0520ec5a1ecf047f948076f6ce3e084a1c634ddc"
  license "MIT"
  head "https://github.com/projectdiscovery/katana.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/katana/main.go"
  end

  test do
    system "katana", "-u", "https://example.com", "-ns"
  end
end
