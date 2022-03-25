class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.2.3.tar.gz"
  sha256 "9b3a0d637d0d3aa4607b2442e3053f593cfe10bd46d4a4aa1df4422607583b64"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.2.3"
    sha256 cellar: :any_skip_relocation, big_sur:      "71b8dd0eab51ebe71e56602960583620192401d26e9f5945197499ecac539964"
    sha256 cellar: :any_skip_relocation, catalina:     "62736f9e67e94302b06e0a68cd8f4b7cd1992a5ff43f0b00e51b1264b55e6f5d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2ae38f6f1cf64587d38367caa81ee13109e43ac05d299f128a617f92e00dc994"
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
