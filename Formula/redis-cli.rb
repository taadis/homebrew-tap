class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.2.2.tar.gz"
  sha256 "c7a22e92f6f842fee5897415572860a8151f31506befdc4b94565f9ed58e7ece"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.2.1"
    sha256 cellar: :any_skip_relocation, big_sur:      "65fbdea908f69cec4e96708e6996bd3cee57d85be55470805949245e2cd20930"
    sha256 cellar: :any_skip_relocation, catalina:     "3514c0c70bb3a3c6121a4da472ef9ad4cc62ec8a5d35b996839f3c9ee2c464a0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f9342fb0c9bc32a9560ff2475ae9aa0fc30c0d3514d88a689e10bec65d3a4d1e"
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
