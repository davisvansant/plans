pkg_name=llvm
pkg_origin=davisvansant
pkg_version="10.0.0"
pkg_maintainer="Davis Van Sant <davisvansant@users.noreply.github.com>"
pkg_license=("Apache-2.0")
pkg_source="https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/llvm-10.0.0.src.tar.xz"
pkg_filename=${pkg_name}-${pkg_version}.src.tar.xz
pkg_dirname=${pkg_name}-${pkg_version}.src
pkg_shasum="df83a44b3a9a71029049ec101fb0077ecbbdf5fe41e395215025779099a98fdf"
pkg_deps=(
  core/glibc
  core/gcc-libs
  core/zlib
  )
pkg_build_deps=(
  core/cmake
  core/gcc
  davisvansant/python/3.8.2/20200420025038
  core/glibc
  core/gcc-libs
  core/git
  core/ninja
  core/zlib
  )
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)
pkg_bin_dirs=(bin)
pkg_description="The LLVM Project is a collection of modular and reusable compiler and toolchain technologies"
pkg_upstream_url="https://llvm.org/"

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
  mkdir -p build
  cd build
  cmake \
   -DCMAKE_BUILD_TYPE=Release \
   -DCMAKE_INSTALL_PREFIX="${pkg_prefix}" \
   -DLLVM_TARGETS_TO_BUILD=X86 \
   -DLLVM_INCLUDE_EXAMPLES=OFF \
   -DLLVM_INCLUDE_TESTS=OFF \
   -DLLVM_INCLUDE_BENCHMARKS=OFF \
   -G "Ninja" \
   ../.
  ninja
}

do_check() {
  return 0
}

do_install() {
  cd build
  ninja install
}

do_strip() {
  do_default_strip
}

do_end() {
  do_default_end
}
