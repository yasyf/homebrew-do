class Do < Formula
  include Language::Python::Virtualenv

  desc "GPT3-powered bash commands"
  homepage "https://github.com/yasyf/gpt-do"
  url "https://files.pythonhosted.org/packages/ce/2c/f1ad114d524af544ff1571b368e5d42c4430eb213521c88c2dcf1ab96ec7/gpt_do-0.1.14.tar.gz"
  sha256 "9cefe8b2b8b92cdb29869e393cb58e404206957c09e95e20d99cf840972744d9"
  license "MIT"

  livecheck do
    strategy :pypi
    url :stable
  end

  option "with-playwright"

  depends_on "python@3.10"

  if build.with?("playwright")
    depends_on "node"
    depends_on "yasyf/do/playwright"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/37/f7/2b1b0ec44fdc30a3d31dfebe52226be9ddc40cd6c0f34ffc8923ba423b69/certifi-2022.12.7.tar.gz"
    sha256 "35824b4c3a97115964b408844d64aa14db1cc518f6562e8d7261699d1350a9e3"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/a1/34/44964211e5410b051e4b8d2869c470ae8a68ae274953b1c7de6d98bbcf94/charset-normalizer-2.1.1.tar.gz"
    sha256 "5a3d016c7c547f69d6f81fb0db9449ce888b418b5b9952cc5e6e66843e9dd845"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  resource "commonmark" do
    url "https://files.pythonhosted.org/packages/60/48/a60f593447e8f0894ebb7f6e6c1f25dafc5e89c5879fdc9360ae93ff83f0/commonmark-0.9.1.tar.gz"
    sha256 "452f9dc859be7f06631ddcb328b6919c67984aca654e5fefb3914d54691aed60"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/66/0c/8d907af351aa16b42caae42f9d6aa37b900c67308052d10fdce809f8d952/decorator-5.1.1.tar.gz"
    sha256 "637996211036b6385ef91435e4fae22989472f9d571faba8927ba8253acbc330"
  end

  resource "dirtyjson" do
    url "https://files.pythonhosted.org/packages/db/04/d24f6e645ad82ba0ef092fa17d9ef7a21953781663648a01c9371d9e8e98/dirtyjson-1.0.8.tar.gz"
    sha256 "90ca4a18f3ff30ce849d100dcf4a003953c79d3a2348ef056f1d9c22231a25fd"
  end

  resource "et-xmlfile" do
    url "https://files.pythonhosted.org/packages/3d/5d/0413a31d184a20c763ad741cc7852a659bf15094c24840c5bdd1754765cd/et_xmlfile-1.1.0.tar.gz"
    sha256 "8eb9e2bc2f8c97e37a2dc85a09ecdcdec9d8a396530a6d5a33b30b9a92da0c5c"
  end

  resource "greenlet" do
    url "https://files.pythonhosted.org/packages/fd/6a/f07b0028baff9bca61ecfcd9ee021e7e33369da8094f00eff409f2ff32be/greenlet-2.0.1.tar.gz"
    sha256 "42e602564460da0e8ee67cb6d7236363ee5e131aa15943b6670e44e5c2ed0f67"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/5f/c7/5ca7c100dcc85b5ef1b176bdf87be5e4392c2c3018e13cc7cdef828c6a09/numpy-1.24.0.tar.gz"
    sha256 "c4ab7c9711fe6b235e86487ca74c1b092a6dd59a3cb45b63241ea0a148501853"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/63/50/bfc6c276d474b826353a155fbd478c81b035158549cfc2ce1a14215fe364/openai-0.25.0.tar.gz"
    sha256 "59ac6531e4f7bf8e9a53186e853d9ffb1d5f07973ecb4f7d273163a314814510"
  end

  resource "openpyxl" do
    url "https://files.pythonhosted.org/packages/2c/b8/ff77a718173fd73e49f883b4fda88f11af1fc51edb9252af3785b0cad987/openpyxl-3.0.10.tar.gz"
    sha256 "e47805627aebcf860edb4edf7987b1309c1b3632f3750538ed962bbcc3bd7449"
  end

  resource "pandas" do
    url "https://files.pythonhosted.org/packages/4d/07/c4d69e1acb7723ca49d24fc60a89aa07a914dfb8e7a07fdbb9d8646630cd/pandas-1.5.2.tar.gz"
    sha256 "220b98d15cee0b2cd839a6358bd1f273d0356bf964c1a1aeb32d47db0215488b"
  end

  resource "pandas-stubs" do
    url "https://files.pythonhosted.org/packages/47/ec/0a87a213c36f23861c5a2a045ba6014518d7501dc09dc69dc04ff7b6b737/pandas_stubs-1.5.2.221213.tar.gz"
    sha256 "0cbc1dbdf5dddb4d67ebc851b9cfb265bf62fe317b043bd37ee5a4a2659421f2"
  end

  resource "py" do
    url "https://files.pythonhosted.org/packages/98/ff/fec109ceb715d2a6b4c4a85a61af3b40c723a961e8828319fbcb15b868dc/py-1.11.0.tar.gz"
    sha256 "51c75c4126074b472f746a24399ad32f6053d1b34b68d2fa41e558e6f4a98719"
  end

  resource "pyee" do
    url "https://files.pythonhosted.org/packages/99/d0/32803671d5d9dc032c766ad6c0716db98fa9b2c6ad9ec544f04849e9d3c7/pyee-9.0.4.tar.gz"
    sha256 "2770c4928abc721f46b705e6a72b0c59480c4a69c9a83ca0b00bb994f1ea4b32"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/e0/ef/5905cd3642f2337d44143529c941cc3a02e5af16f0f65f81cbef7af452bb/Pygments-2.13.0.tar.gz"
    sha256 "56a8508ae95f98e2b9bdf93a6be5ae3f7d8af858b43e02c5a2ff083726be40c1"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/6d/37/54f2d7c147e42dc85ffbc6910862bb4f141fb3fc14d9a88efaa1a76c7df2/pytz-2022.7.tar.gz"
    sha256 "7ccfae7b4b2c067464a6733c6261673fdb8fd1be905460396b97a073e9fa683a"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/a5/61/a867851fd5ab77277495a8709ddda0861b28163c4613b011bc00228cc724/requests-2.28.1.tar.gz"
    sha256 "7c5599b102feddaa661c826c56ab4fee28bfd17f5abca1ebbe3e7f19d7c97983"
  end

  resource "retry" do
    url "https://files.pythonhosted.org/packages/9d/72/75d0b85443fbc8d9f38d08d2b1b67cc184ce35280e4a3813cda2f445f3a4/retry-0.9.2.tar.gz"
    sha256 "f8bfa8b99b69c4506d6f5bd3b0aabf77f98cdb17f3c9fc3f5ca820033336fba4"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/11/23/814edf09ec6470d52022b9e95c23c1bef77f0bc451761e1504ebd09606d3/rich-12.6.0.tar.gz"
    sha256 "ba3a3775974105c221d31141f2c116f4fd65c5ceb0698657a11e9f295ec93fd0"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/c1/c2/d8a40e5363fb01806870e444fc1d066282743292ff32a9da54af51ce36a2/tqdm-4.64.1.tar.gz"
    sha256 "5f4f682a004951c1b450bc753c710e9280c5746ce6ffedee253ddbcbf54cf1e4"
  end

  resource "types-pytz" do
    url "https://files.pythonhosted.org/packages/45/ee/5dfe0f4093efa8411b129381370df3f34474951c3012cc63684726996fa7/types-pytz-2022.7.0.0.tar.gz"
    sha256 "4f20c2953b3a3a0587e94489ec4c9e02c3d3aedb9ba5cd7e796e12f4cfa7027e"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/e3/a7/8f4e456ef0adac43f452efc2d0e4b242ab831297f1bac60ac815d37eb9cf/typing_extensions-4.4.0.tar.gz"
    sha256 "1511434bb92bf8dd198c12b1cc812e800d4181cfcb867674e0f8279cc93087aa"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c2/51/32da03cf19d17d46cce5c731967bf58de9bd71db3a379932f53b094deda4/urllib3-1.26.13.tar.gz"
    sha256 "c083dd0dce68dbfbe1129d5271cb90f9447dea7d52097c6e0126120c521ddea8"
  end

  def install
    ENV["BLAS"] = "None"
    ENV["LAPACK"] = "None"
    ENV["ATLAS"] = "None"

    venv = virtualenv_create(libexec, "python3.10")
    root = venv.instance_variable_get(:@venv_root)
    system "python3.10", "-m", "venv", "--upgrade", "--upgrade-deps", root
    system root/"bin"/"pip", "install", "-U", "wheel", "packaging"

    venv.pip_install resources.filter { |r| r.url.include? "pythonhosted" }
    venv.pip_install_and_link buildpath
  end

  def caveats
    <<~EOS
      If you're using `bash` or `zsh`, `do` is a reserved keyword.
      We've aliased `ddo` to `do` for your convenience.

      Usage: `ddo revert my last commit`
    EOS
  end

  test do
    shell_output("#{bin}/do", 2)
    shell_output("#{bin}/ddo", 2)
  end
end
