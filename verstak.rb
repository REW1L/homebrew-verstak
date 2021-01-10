class Verstak < Formula
  include Language::Python::Virtualenv
  homepage "https://github.com/REW1L/verstak"
  url "https://github.com/REW1L/verstak.git",
    :using => :git,
    :tag => "0.0.15",
    :revision => "1ace66e5d4db2a80b7893d0be3c32925639bd6fb"

  depends_on "python@3"

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/2c/4d/3ec1ea8512a7fbf57f02dee3035e2cce2d63d0e9c0ab8e4e376e01452597/lxml-4.5.2.tar.gz"
    sha256 "cdc13a1682b2a6241080745b1953719e7fe0850b40a5c71ca574f090a1391df6"
  end

  resource "python-docx" do
    url "https://files.pythonhosted.org/packages/e4/83/c66a1934ed5ed8ab1dbb9931f1779079f8bca0f6bbc5793c06c4b5e7d671/python-docx-0.8.10.tar.gz"
    sha256 "bc76ecac6b2d00ce6442a69d03a6f35c71cd72293cd8405a7472dfe317920024"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/2e/e4/3447fed9ab29944333f48730ecff4dca92f0868c5b188d6ab2b2078e32c2/regex-2020.11.13.tar.gz"
    sha256 "83d6b356e116ca119db8e7c6fc2983289d87b27b3fac238cfe5dca529d884562"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/b6/d1/39a24ca38121a29c6ba4a85fb6cbe4429448a6d1e02944625933367a872f/tqdm-4.55.2.tar.gz"
    sha256 "86ca00c4942c3b3dc7ed31bae44cd2db38ef85ca05a7920f6a6c52ad7fcac904"
  end

  def install
    virtualenv_install_with_resources :using => "python@3"
  end
end
