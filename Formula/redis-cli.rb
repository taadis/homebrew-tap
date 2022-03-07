class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-0.096.tar.gz"
  sha256 "f73fe5441e39b9e24f03e295819a9ccd0dca90547da05eae9760d5bca776c771"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-0.096"
    sha256 cellar: :any_skip_relocation, big_sur:      "061043a304691e9a3924f460af4a724b354804d7cd51b9ef04c46097808a9f84"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "63deb3b1f4312b02179e65a877c2ce6c79e95b801ba62cdf220d93f12b46126c"
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
