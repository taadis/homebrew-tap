class RedisCliAT0091 < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-0.091.tar.gz"
  sha256 "d1958a9b4b1e23c6b9eb778b8fdd06381ee21bdd7bb124c8b87abb933ee9d0f1"
  license "MIT"

  depends_on "make" => :build

  def install
    system "make", "redis-cli"
    bin.install "./redis-cli"
  end

  test do
    system "true"
  end
end
