class Versiontracker < Formula
  desc "CLI tool to track and update macOS applications"
  homepage "https://github.com/docdyhr/versiontracker"
  url "https://github.com/docdyhr/versiontracker/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "508169bde2e6ace531f4e36c3b3229f084ca29334946a4fa1ee9a853774980db"
  license "MIT"

  depends_on "python@3.13"

  resource "fuzzywuzzy" do
    url "https://pypi.org/packages/source/f/fuzzywuzzy/fuzzywuzzy-0.18.0.tar.gz"
    sha256 "2d731224f0b344c2c35349e8a0e85f8b9ff9593b25c75143af5c4e64a3f433f1"
  end

  resource "rapidfuzz" do
    url "https://pypi.org/packages/source/r/rapidfuzz/rapidfuzz-3.13.0.tar.gz"
    sha256 "7ec3077bb99df90d3c2f1399bc6dd3ae7b3e55b33baebe4c01d9e0de2de4c1f5"
  end

  resource "tqdm" do
    url "https://pypi.org/packages/source/t/tqdm/tqdm-4.67.1.tar.gz"
    sha256 "ea5956ce5c0582df4c269d25e7c5827d3d7d87b2c425c9d3a5db8e2c92a3cf03"
  end

  resource "PyYAML" do
    url "https://pypi.org/packages/source/P/PyYAML/PyYAML-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "termcolor" do
    url "https://pypi.org/packages/source/t/termcolor/termcolor-3.1.0.tar.gz"
    sha256 "ed432c7f8b3b8f3b12f8cdf48affc1cc8ce9cf5e2b6b3c6094cec1b0ac66c71e"
  end

  resource "tabulate" do
    url "https://pypi.org/packages/source/t/tabulate/tabulate-0.9.0.tar.gz"
    sha256 "0053a6d67a34c68f612baf3c1a357c841d650c33b55e444a11b5b59d4a390331"
  end

  resource "psutil" do
    url "https://pypi.org/packages/source/p/psutil/psutil-6.1.1.tar.gz"
    sha256 "cf8496728c18f2d0b45198f06895be52f36611711746b7f30c464b422b50e2f5"
  end

  resource "aiohttp" do
    url "https://pypi.org/packages/source/a/aiohttp/aiohttp-3.12.15.tar.gz"
    sha256 "fbc12c3e91bd2b7b4bb8e725bb3d5dbb8acc6feb92e966b1db52cb3fa7a8fbe3"
  end

  def install
    venv = virtualenv_create(libexec, "python3")
    venv.pip_install resources
    venv.pip_install_and_link buildpath
  end

  test do
    (testpath/"config.yml").write <<~EOS
      # Test config
    EOS
    assert_match "0.7.0", shell_output("#{bin}/versiontracker --version")
  end
end