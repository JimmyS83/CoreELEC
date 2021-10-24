# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="tvh-dtv-scan-tables"
PKG_VERSION="94be51b2e0183faf3ecc3bbf4d6d4b16279b8e7b"
PKG_SHA256="1879fb5011d5bbda2e2f9f246f2e500c40f85f2d0da4a9bc04ac5a5e0c80f095"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/tvheadend"
PKG_URL="https://github.com/tvheadend/dtv-scan-tables/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Digital TV scan tables, a fork from Tvh to support more recent tables."
PKG_TOOLCHAIN="manual"
PKG_BUILD_FLAGS="-sysroot"

makeinstall_target() {
  make install DATADIR=${INSTALL}/usr/share
}
