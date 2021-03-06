# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils unpacker

DESCRIPTION="Additional proprietary codecs for vivaldi"
HOMEPAGE="http://ffmpeg.org/"
SRC_URI="http://security.ubuntu.com/ubuntu/pool/universe/c/chromium-browser/chromium-codecs-ffmpeg-extra_${PV}-0ubuntu0.18.04.1_amd64.deb"

LICENSE="LGPL2.1"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="www-client/vivaldi"

RESTRICT="mirror strip"

S="${WORKDIR}"

src_unpack() {
	unpack_deb ${A}
}

src_prepare() {
	:
}

src_compile() {
	:
}

src_install() {
	dodir opt/vivaldi
	insinto opt/vivaldi
	doins ${S}/usr/lib/chromium-browser/libffmpeg.so
}
