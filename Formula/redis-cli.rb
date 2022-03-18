class RedisCli < Formula
  desc "Install the redis-cli only"
  homepage "https://github.com/taadis/homebrew-tap"
  url "https://download.redis.io/releases/redis-1.1.92-beta.tar.gz"
  sha256 "7dd05592aeeaef9a18c232168179ed5d50de66053707209f1d15e7e9b1dcc5ee"
  license "MIT"

  bottle do
    root_url "https://github.com/taadis/homebrew-tap/releases/download/redis-cli-1.1.91-beta"
    sha256 cellar: :any_skip_relocation, big_sur:      "d61a31d93073791861cd8e812c4370721509e72c1d6f65e18ab775dd744cb8eb"
    sha256 cellar: :any_skip_relocation, catalina:     "c063110591d04bd2fd05d7d8e91d8cf10798f0a42a411f38e01cb8da8de974b0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3eeae0801b4620006d64851c3c4cc7681a4912e7d590bba67b31479afcbab496"
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
