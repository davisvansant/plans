pkg_name=go
pkg_origin=davisvansant
pkg_version="1.14.3"
pkg_maintainer="Davis Van Sant <davisvansant@users.noreply.github.com>"
pkg_license=("BSD")
pkg_source="https://dl.google.com/go/go1.14.3.linux-amd64.tar.gz"
pkg_filename="go1.14.3.linux-amd64.tar.gz"
pkg_dirname="go"
pkg_shasum="1c39eac4ae95781b066c144c58e45d6859652247f7515f0d2cba7be7d57d2226"
pkg_deps=(core/glibc)
pkg_lib_dirs=(lib)
pkg_bin_dirs=(bin)
pkg_description="Go is an open source programming language that makes it easy to build simple, reliable, and efficient software"
pkg_upstream_url="https://golang.org/"

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
  cp -av bin lib misc pkg "${pkg_prefix}/"
}

do_strip() {
  return 0
}

do_end() {
  do_default_end
}
