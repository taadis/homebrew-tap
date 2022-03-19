class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.1.93-beta.tar.gz"
  sha256 "62c1942f6366f631368f64e22e0140d28fd9c399bb510727773c5e09d7c1b3d1"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.1.93-beta"
    sha256 cellar: :any_skip_relocation, big_sur:      "9baced07a48855a5880dbe3240e8c242144a3cfa00909f63a85c72ab1315a006"
    sha256 cellar: :any_skip_relocation, catalina:     "0de6bfd1f502d5c5ef8ab8bdedd5fdabb08c919bde63cb2c1115246e00376907"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "efc0b80b53374d1ed3b9d3c90c45ec6a251107b63a1d0ff2c605939f2e870cc3"
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
