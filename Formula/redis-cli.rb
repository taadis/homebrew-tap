class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.02.tar.gz"
  sha256 "aa1fe425568e19bcf89db9a48df68a42732134c29978e27c6e9c05008a73321e"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.01"
    sha256 cellar: :any_skip_relocation, big_sur:      "8f5a6fd2967e0ef1687e0b80d2c1826c9f278a88e876918c862e681d2e845deb"
    sha256 cellar: :any_skip_relocation, catalina:     "86d690446e81c8a0ce7b7a23d607e50b49717a0ab04ad44eddd0023631901aad"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bd81fd8c92980fb77b40ea4b2cb48e75903cbb3bff109401f92d3f33e6b936e8"
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
