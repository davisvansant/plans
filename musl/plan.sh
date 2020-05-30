pkg_name=musl
pkg_origin=davisvansant
pkg_version="1.2.0"
pkg_maintainer="Davis Van Sant <davisvansant@users.noreply.github.com>"
pkg_license=("MIT")
pkg_source="https://musl.libc.org/releases/${pkg_name}-${pkg_version}.tar.gz"

# pkg_filename="${pkg_name}-${pkg_version}.tar.gz"

pkg_shasum="c6de7b191139142d3f9a7b5b702c9cae1b5ee6e7f57e582da9328629408fd4e8"
pkg_deps=()
pkg_build_deps=(core/make core/gcc)
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)
pkg_bin_dirs=(bin)
pkg_description="\
musl is an implementation of the C standard library \
built on top of the Linux system call API, including \
interfaces defined in the base language standard, POSIX, \
and widely agreed-upon extensions \
"
pkg_upstream_url="https://musl.libc.org/"

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
  --exec-prefix="$pkg_prefix" \
  --syslibdir="$pkg_prefix/lib"
  make
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
