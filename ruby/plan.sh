pkg_name=ruby
pkg_origin=davisvansant
pkg_version="2.7.1"
pkg_maintainer="Davis Van Sant <davisvansant@users.noreply.github.com>"
pkg_license=("Apache-2.0")
pkg_source="https://cache.ruby-lang.org/pub/${pkg_name}/2.7/${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum="d418483bdd0000576c1370571121a6eb24582116db0b7bb2005e90e250eae418"
pkg_deps=(core/glibc)
pkg_build_deps=(core/make core/gcc core/openssl)
pkg_description="A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write"
pkg_upstream_url="https://www.ruby-lang.org/"

do_begin() {
  do_default_begin
}

do_download() {
  do_default_download
}

do_verify() {
  do_default_verify
}

do_clean() {
  do_default_clean
}

do_unpack() {
  do_default_unpack
}

do_prepare() {
  do_default_prepare
}

do_build() {
  ./configure \
    --prefix="$pkg_prefix" \
    --enable-shared \
    --disable-install-doc \
    --with-openssl-dir="$(pkg_path_for core/openssl)"
}

do_check() {
  return 0
}

do_install() {
  do_default_install
}

do_strip() {
  do_default_strip
}

do_end() {
  do_default_end
}
