require 'formula'

class ElixirBuild < Formula
  homepage "https://github.com/Joe-noh/elixir-build"
  head "https://github.com/Joe-noh/elixir-build.git"
  url "https://github.com/Joe-noh/elixir-build/archive/v20140716.tar.gz"

  def install
    ENV["PREFIX"] = prefix
    system "./install.sh"
  end

  test do
    system "#{bin}/elixir-build", "--version"
  end
end
