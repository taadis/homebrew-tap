class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.1.95-beta.tar.gz"
  sha256 "fd1c94b0a92f6f623f0b0ccb65378c57ba8203fd364bfe5870d161278dcc2393"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.1.94-beta"
    sha256 cellar: :any_skip_relocation, big_sur:      "ed1959877c22428f878215c86f49230b85224f2e5c3ad9808d82b893a0cf0bbf"
    sha256 cellar: :any_skip_relocation, catalina:     "b416ebe1cb388e289e4a937a23b90b4da7dbd4d43f10d251ca1b908521ee0da6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4a0c222aaa36d497701a3860b9a3d2ca14fdf9874b07c347cd5716c90e68330c"
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
