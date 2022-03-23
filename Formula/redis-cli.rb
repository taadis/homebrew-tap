class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.2.1.tar.gz"
  sha256 "2cc8a9d872faa76ccb66289cfdc4094edfdbc8aba0eaad8d09ce8803bd5cf8cc"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.2.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "c72ea247d184bf3b41e9fb47ef4ac2f28da04755910a5d09b90dc27a97e888c3"
    sha256 cellar: :any_skip_relocation, catalina:     "7e7a01b9a5c84ed00f845a6164ee0d0c1e94bfe06f584a3d35c0bd8644a5710b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "17f7dfed5a974e3263ce9df4cace152936952437b6a78ca5214c988c728fef63"
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
