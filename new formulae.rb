# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class NewFormulae < Formula
  desc "this is the first tap test"
  homepage "https://github.com/Araram96/gitstart-tap-test"
  url "https://github.com/Araram96/gitstart-tap-test/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "8c8d83132b2a07ce42f8550f09ef9d52f11e7b25a821e19f3c3e401b57f6ebf0"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    bin.install "gitstart"    
    bin.install Dir["lib"]    
    bin.install Dir["files"]
    prefix.install "README.md"
    prefix.install "LICENSE"  
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test New Formulae`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
