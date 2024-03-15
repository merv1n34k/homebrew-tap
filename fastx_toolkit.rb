class FastxToolkit < Formula
  desc "FASTA/FASTQ pre-processing programs"
  homepage "https://github.com/merv1n34k/fastx_toolkit/tree/homebrew"
  license "AGPLv3"
  url "https://github.com/merv1n34k/fastx_toolkit/releases/download/v0.0.6/fastx_toolkit-0.0.6.tar.gz"
  head "https://github.com/merv1n34k/fastx_toolkit.git", branch: "homebrew"
  sha256 "2f1fbdf1a84529cc2cba1037de320d55fa316a41c743b67c7eaf6db490ea2b66"

  depends_on "cmake" => :build
  depends_on "gcc" => :build
  #depends_on "your_tap/other_formula"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    system "false"
  end
end
