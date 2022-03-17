class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.1.91-beta.tar.gz"
  sha256 "1f919950d8036bf5c62a2daa0a61976026cb9e2a0b203fad3ab611530a075642"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.1.90-beta"
    sha256 cellar: :any_skip_relocation, big_sur:      "ae91d8e761134b38877970940a5a23f5260795130ab3bfdf7f6bc750ed985c00"
    sha256 cellar: :any_skip_relocation, catalina:     "aff7e5229224c6ca78203ee7641cb2a77acdcd46a6b48c6d25b2b67a3f791cd1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1fdaecac4ae916fcb0106b6df47db86c1fb45932f3275c024518a89916f02380"
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
