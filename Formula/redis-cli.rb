class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-0.900.tar.gz"
  sha256 "a3524ca2776849ed66bf6acf4ce24f39f202512131b74090d173c2487c4c7740"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-0.100"
    sha256 cellar: :any_skip_relocation, big_sur:      "7f2042a59a63ec4f56ec40991f33c31577d16b42b750be08085acf4dc3963002"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f3a8ed6fd6a40513b2bf95143b57ce026252327a34d5d137f6f07beb0d4e6ea6"
  end

  depends_on "make" => :build

  def install
    system "make", "redis-cli"
    bin.install "./redis-cli"
  end

  test do
    system "true"
  end
end
