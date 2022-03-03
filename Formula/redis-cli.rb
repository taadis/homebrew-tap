class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-0.092.tar.gz"
  sha256 "a7dbfc91676c013c949d605091a141c01b7c7139315bbf96a0a074cee7d857fd"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-0.092"
    sha256 cellar: :any_skip_relocation, big_sur:      "0b2c57394f69127f425554e7c70b8462940f2cbadc4fe9bcfe8b26ee0fcd04d3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "757ad887e46fe9e9b3f8440428f8de3427ab80cf9d94ea0068bde2453fb3a0d6"
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
