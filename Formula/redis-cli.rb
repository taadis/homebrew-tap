class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-0.096.tar.gz"
  sha256 "f73fe5441e39b9e24f03e295819a9ccd0dca90547da05eae9760d5bca776c771"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-0.095"
    sha256 cellar: :any_skip_relocation, big_sur:      "146dba8284fb43e2a49ab2f366d30ad8ac5af0ccbde0cef6bfac0c0aa16ac278"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "105c8eb6aa678aa0a28460c6f9c5589b5f8141a1f0d2f859d5b0075e9f74faf3"
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
