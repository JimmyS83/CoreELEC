# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="comskip"
PKG_VERSION="4f2cd4728255cad69a74c1b8170826f296fdfe21"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.kaashoek.com/comskip/"
PKG_URL="https://github.com/erikkaashoek/Comskip/archive/${PKG_VERSION}.tar.gz"
PKG_SOURCE_DIR="Comskip-${PKG_VERSION}*"
PKG_DEPENDS_TARGET="toolchain argtable2 ffmpeg gnutls"
PKG_LONGDESC="Comskip detects commercial breaks from a video stream. It can be used for post-processing recordings."
PKG_TOOLCHAIN="autotools"

pre_configure_target() {
  LDFLAGS+=" -ldl"

  export argtable2_CFLAGS="-I$(get_build_dir argtable2)/src"
  export argtable2_LIBS="-L$(get_build_dir argtable2)/src/.libs -largtable2"
}

make_target() {
 :
}
