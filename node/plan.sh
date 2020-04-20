pkg_name=node
pkg_origin=davisvansant
pkg_version="12.16.2"
pkg_maintainer="Davis Van Sant <davisvansant@users.noreply.github.com>"
pkg_license=("Apache-2.0")
pkg_source="https://nodejs.org/dist/v${pkg_version}/${pkg_name}-v${pkg_version}.tar.gz"
# pkg_filename="${pkg_name}-${pkg_version}.tar.gz"
pkg_dirname="${pkg_name}-v${pkg_version}"
pkg_shasum="48b21340eff95bfc6e7297e4a027f5db74d6d64257c476972a1b2f2fdccc9582"
pkg_deps=(
  core/glibc
  core/gcc-libs
  core/python2
  core/bash
)
pkg_build_deps=(
  core/make
  core/gcc
  core/python2
  core/gcc-libs
)
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)
pkg_bin_dirs=(bin)
pkg_description="Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine."
pkg_upstream_url="https://nodejs.org/"

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
   --prefix "${pkg_prefix}" \
   --dest-cpu "x64" \
   --dest-os "linux"

 make -j4
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
