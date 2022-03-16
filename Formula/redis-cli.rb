class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.1.90.tar.gz"
  sha256 "3adcd5ac05e239a0065082e8efc8ff13a1f93c462ab540fb77b68807d051267a"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.02"
    sha256 cellar: :any_skip_relocation, big_sur:      "0604d2bb5e7d1e660689e026270fbeedc8c3d21d0bf3ce10dcd87c1963520249"
    sha256 cellar: :any_skip_relocation, catalina:     "70d0e6675f01868659f618db7be0e6e121ab186a1c1a03922cad1b58f284ba52"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "04431e070c1248a47cf96d3168bac4f04a451e71ac05b24c4a5c2bd2c39af239"
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
