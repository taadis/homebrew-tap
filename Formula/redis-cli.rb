class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-0.900.tar.gz"
  sha256 "a3524ca2776849ed66bf6acf4ce24f39f202512131b74090d173c2487c4c7740"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-0.900"
    sha256 cellar: :any_skip_relocation, big_sur:      "4c0132162b784bf0112171f412906ef7bb7e9b8bcb82bb64e524bd2a9c2526ab"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "08c2bd0a4f82c6d7007249cfb4fc904639f5194cfeefb677598c737f7132dcb3"
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
