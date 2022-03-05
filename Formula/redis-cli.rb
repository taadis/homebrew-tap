class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-0.094.tar.gz"
  sha256 "0ea29c804d45eac9f4cce821c9cefed4733ff2a023bb3333f4f3f837a4fb1780"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-0.093"
    sha256 cellar: :any_skip_relocation, big_sur:      "74ef20bda0d502f9e62fd92011b8d33b8c94d1417e36e671238bfa3520ac0830"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "72061e3b9f92ccf109244d09d9d58ffb3b002fd9936df251c05cefb41eae1400"
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
