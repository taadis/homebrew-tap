class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.0.tar.gz"
  sha256 "f9dd74fe5785be3728fb300c26861111f336597db55b79a52be467b8420a914b"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-900.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "5d969462cda42b15f2042f15f608bdd4e0dd7cc43084dba0aca185f72ce6db21"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1469168fd8ed94d32164f10965d2ee5b202b21b02f53b201b1689202aeb7d3fc"
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
