class Verstak < Formula
  include Language::Python::Virtualenv
  homepage "https://github.com/REW1L/verstak"
  url "https://github.com/REW1L/verstak.git",
    :using => :git,
    :tag => "0.0.6",
    :revision => "2e1e95f57288f8e2137a77bebe80d345c84e3f11"

  depends_on "python@3"

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/2c/4d/3ec1ea8512a7fbf57f02dee3035e2cce2d63d0e9c0ab8e4e376e01452597/lxml-4.5.2.tar.gz"
    sha256 "cdc13a1682b2a6241080745b1953719e7fe0850b40a5c71ca574f090a1391df6"
  end

  resource "python-docx" do
    url "https://files.pythonhosted.org/packages/e4/83/c66a1934ed5ed8ab1dbb9931f1779079f8bca0f6bbc5793c06c4b5e7d671/python-docx-0.8.10.tar.gz"
    sha256 "bc76ecac6b2d00ce6442a69d03a6f35c71cd72293cd8405a7472dfe317920024"
  end

  def install
    virtualenv_install_with_resources :using => "python@3"
  end
end
