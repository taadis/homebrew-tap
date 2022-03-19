class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.1.93-beta.tar.gz"
  sha256 "62c1942f6366f631368f64e22e0140d28fd9c399bb510727773c5e09d7c1b3d1"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.1.92-beta"
    sha256 cellar: :any_skip_relocation, big_sur:      "225c87ac7c12cc79a7773616bb9a3eb7bfd917452a045706c587da7fb93742a0"
    sha256 cellar: :any_skip_relocation, catalina:     "863296f9c9d285cce5c4003527d3c3792ba77eb0b09192525c2cfc55b0152a99"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1b2690e6e16d6a69ecb728246688a5cd6beb6c5ffac14eac369f5b57dc66524f"
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
