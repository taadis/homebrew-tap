class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.2.2.tar.gz"
  sha256 "c7a22e92f6f842fee5897415572860a8151f31506befdc4b94565f9ed58e7ece"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.2.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "3cd03202a7efcd457c774a297312d3707c9eed8852e2523918c4dac40d6b518d"
    sha256 cellar: :any_skip_relocation, catalina:     "26602a07a22d90fc7dee3a17f0e80af3db7aa30e4cb5e7c19140300d17c4ed9a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8b00dd06b4170d9379757a8a9e6e7e785b26d3135e3fed953bda443eb1f39af0"
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
