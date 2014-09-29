require 'formula'

class ElixirBuild < Formula
  homepage "https://github.com/mururu/elixir-build"
  head "https://github.com/mururu/elixir-build.git",
       revision: "b65dd390a477fc9cd9f078a8319059481df4f7df"

  def install
    ENV["PREFIX"] = prefix
    system "./install.sh"
  end

  test do
    system "#{bin}/elixir-build", "--version"
  end
end
