class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.2.4.tar.gz"
  sha256 "9f92e3f08bf815bdfa57ed56544037c0f2c7582d15d0fb5eb2c921cf6eb195b9"
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
