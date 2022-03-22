class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.2.0.tar.gz"
  sha256 "88fdc5433de3a0c77895b6b5f86d69b7a8a8575d042af68ba1cb24c996faa9bf"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.1.95-beta"
    sha256 cellar: :any_skip_relocation, big_sur:      "c13f8af24f7c8d579ea0afdb01ac3e8dd876826c7878ad49f63f482698ab7d78"
    sha256 cellar: :any_skip_relocation, catalina:     "1338cf3e67e443a4ae6dcdc3ffe2e04b9650f4c62de57499ba1bf91a5cbb348e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "de2677e54e4172daf09bf6139039405b8bd4e115c6c4a27fccf6da93f6cf9947"
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
