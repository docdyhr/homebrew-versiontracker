class Versiontracker < Formula
  desc "CLI tool to track and update macOS applications"
  homepage "https://github.com/docdyhr/versiontracker"
  url "https://github.com/docdyhr/versiontracker/archive/refs/tags/v0.6.5.tar.gz"
  sha256 "21e4fa3250a2f8528abb16fbcc9e3b00790deddd70725690d01803f66026b4c9"
  license "MIT"

  depends_on "python@3.12"

  resource "fuzzywuzzy" do
    url "https://pypi.org/packages/source/f/fuzzywuzzy/fuzzywuzzy-0.18.0.tar.gz"
    sha256 "2d731224f0b344c2c35349e8a0e85f8b9ff9593b25c75143af5c4e64a3f433f1"
  end

  resource "rapidfuzz" do
    url "https://pypi.org/packages/source/r/rapidfuzz/rapidfuzz-3.0.0.tar.gz"
    sha256 "66385e3130183fa95394e992c04b378503449a684916702fbe118e4b5557728a"
  end

  resource "tqdm" do
    url "https://pypi.org/packages/source/t/tqdm/tqdm-4.66.0.tar.gz"
    sha256 "e191ed2c376555016320e41115824cb45332615bbe6a8348e704525b48511f9a"
  end

  resource "PyYAML" do
    url "https://pypi.org/packages/source/P/PyYAML/PyYAML-6.0.tar.gz"
    sha256 "658d2a9332445f6c56191693495f5fab39ca7034a62b3f40e4d38958b621e3e6"
  end

  resource "termcolor" do
    url "https://pypi.org/packages/source/t/termcolor/termcolor-2.3.0.tar.gz"
    sha256 "6a5c10583572a5850535f1d4a7b2d4e11d02131c4894af6b39b0c028a7742cb0"
  end

  resource "tabulate" do
    url "https://pypi.org/packages/source/t/tabulate/tabulate-0.9.0.tar.gz"
    sha256 "0053a6d67a34c68f612baf3c1a357c841d650c33b55e444a11b5b59d4a390331"
  end

  resource "psutil" do
    url "https://pypi.org/packages/source/p/psutil/psutil-7.0.0.tar.gz"
    sha256 "97d8b116e62f036af46a83a5f40a267a2a48752e8d62e5ee83a354c22a39a34a"
  end

  resource "aiohttp" do
    url "https://pypi.org/packages/source/a/aiohttp/aiohttp-3.8.0.tar.gz"
    sha256 "e3a8e8b729effa34354f54153554a204c54e9730a8a1a577ec091673a5f69cb2"
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
    assert_match "versiontracker", shell_output("#{bin}/versiontracker --version")
  end
end
