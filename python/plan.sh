pkg_name=python
pkg_origin=davisvansant
pkg_version="3.8.2"
pkg_maintainer="Davis Van Sant <davisvansant@users.noreply.github.com>"
pkg_license=("Apache-2.0")
pkg_source="https://www.python.org/ftp/${pkg_name}/${pkg_version}/Python-${pkg_version}.tar.xz"
pkg_dirname="Python-${pkg_version}"
pkg_shasum="2646e7dc233362f59714c6193017bb2d6f7b38d6ab4a0cb5fbac5c36c4d845df"
pkg_deps=(
  core/glibc
  core/gcc-libs
  core/openssl
  core/zlib
)
pkg_build_deps=(
  core/make
  core/gcc
  core/gcc-libs
  core/glibc
  core/openssl
  core/zlib
)
pkg_lib_dirs=(lib)
pkg_bin_dirs=(bin)
pkg_description="Python is a programming language that lets you work more quickly and integrate your systems more effectively."
pkg_upstream_url="https://www.python.org/"

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
  # return 0
  ./configure --with-pydebug --prefix "${pkg_prefix}"

  make -s -j2
}

do_check() {
  return 0
}

do_install() {
  do_default_install
}

do_strip() {
  return 0
}

do_end() {
  do_default_end
}
