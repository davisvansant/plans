pkg_name=rust
pkg_origin=davisvansant
pkg_version="1.42.0"
pkg_maintainer="Davis Van Sant <davisvansant@users.noreply.github.com>"
pkg_license=("Apache-2.0")
pkg_source="https://static.rust-lang.org/dist/${pkg_name}-${pkg_version}-x86_64-unknown-linux-gnu.tar.gz"
# pkg_source="https://static.rust-lang.org/dist/${pkg_name}c-${pkg_version}-src.tar.gz"
# pkg_filename="${pkg_name}-${pkg_version}.tar.gz"
# pkg_dirname="${pkg_name}c-${pkg_version}-src"
pkg_dirname="${pkg_name}-${pkg_version}-x86_64-unknown-linux-gnu"
# pkg_shasum="d2e8f931d16a0539faaaacd801e0d92c58df190269014b2360c6ab2a90ee3475"
pkg_shasum="7d1e07ad9c8a33d8d039def7c0a131c5917aa3ea0af3d0cc399c6faf7b789052"

pkg_deps=(
  core/glibc
  core/make
  core/gcc
  core/python
  core/pkg-config
  core/cmake
  core/curl/7.67.0
)
pkg_build_deps=(
  core/make
  core/gcc
  core/python
  core/pkg-config
  core/cmake
  core/curl/7.67.0
)

pkg_lib_dirs=(lib)
pkg_bin_dirs=(bin)
pkg_description="A language empowering everyone to build reliable and efficient software. "
pkg_upstream_url="https://www.rust-lang.org/"

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
  return 0
}

do_check() {
  return 0
}

do_install() {
  ./install.sh --prefix="$pkg_prefix"
}

do_strip() {
  return 0
}

do_end() {
  do_default_end
}
