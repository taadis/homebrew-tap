class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-0.095.tar.gz"
  sha256 "0f65c8caec14905c7f06fdb67db52be9e36234e28ba171d73b6946bc6d38628f"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-0.094"
    sha256 cellar: :any_skip_relocation, big_sur:      "3276b16a829fc51111db803e760f306556d45205dd20aa3c139dceefe7717223"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "44af2174d1db05d305dcc550593084cf8e745eabeac3ecc27cdb1a7c5536176d"
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
