class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-0.092.tar.gz"
  sha256 "a7dbfc91676c013c949d605091a141c01b7c7139315bbf96a0a074cee7d857fd"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-0.091"
    sha256 cellar: :any_skip_relocation, big_sur:      "ad3baf9fae6810a6491c298fe388dcbc7cd9f9e1a438250b2bb9f1d60fbc39ec"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b4ec38250a4641deef3ac66a0ef1709cb71eba17e1d57fa1666f6a6daf88b6ce"
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
