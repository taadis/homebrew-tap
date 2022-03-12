class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.01.tar.gz"
  sha256 "431dca00f0aa75e8f725e29a2d461636705f5dfa3cae2920fdde6951598260f7"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "7a98a76b8666110cd05b11b19acea77a4781b4daa1e7f6d6347b413d978a611f"
    sha256 cellar: :any_skip_relocation, catalina:     "3a16fbf014728accef8e6ee5ff4913b91dd85fe7dab08cac8fc1cab9d34eef6f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e27da77c1884f5d1e27368668fc07830665405fa7a40f01287632458fafa2490"
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
