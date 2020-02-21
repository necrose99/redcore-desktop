# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python3_{4,5,6} )

inherit eutils python-r1

DESCRIPTION="Calamares distribution-independent installer framework runtime meta-package (containing all the runtime dependencies)"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+branding +python"

DEPEND=""
RDEPEND="
	python? (
		>=dev-libs/boost-1.55.0-r2[${PYTHON_USEDEP}]
	)
	branding? ( x11-themes/redcore-artwork-calamares )
	app-misc/calamares-config-redcore
	>=dev-qt/designer-5.9.0:5
	>=dev-qt/linguist-tools-5.9.0:5
	>=dev-qt/qtconcurrent-5.9.0:5
	>=dev-qt/qtcore-5.9.0:5
	>=dev-qt/qtdbus-5.9.0:5
	>=dev-qt/qtdeclarative-5.9.0:5
	>=dev-qt/qtgui-5.9.0:5
	>=dev-qt/qtnetwork-5.9.0:5
	>=dev-qt/qtopengl-5.9.0:5
	>=dev-qt/qtprintsupport-5.9.0:5
	>=dev-qt/qtscript-5.9.0:5
	>=dev-qt/qtsvg-5.9.0:5
	>=dev-qt/qttest-5.9.0:5
	>=dev-qt/qtwebengine-5.9.0:5
	>=dev-qt/qtwebchannel-5.9.0:5
	>=dev-qt/qtwidgets-5.9.0:5
	>=dev-qt/qtxml-5.9.0:5
	>=dev-qt/qtxmlpatterns-5.9.0:5
	>=dev-cpp/yaml-cpp-0.5.1
	>=dev-libs/libatasmart-0.19
	>=kde-frameworks/kconfig-5.18.0
	>=kde-frameworks/ki18n-5.18.0
	>=kde-frameworks/kcoreaddons-5.18.0
	>=kde-frameworks/kparts-5.18.0
	>=kde-frameworks/solid-5.18.0
	>=net-misc/rsync-3.1[xattr]
	>=sys-block/parted-3.0
	>=sys-apps/gptfdisk-0.8.10
	>=sys-apps/dmidecode-2.12-r1
	>=sys-fs/squashfs-tools-4.3:0[xattr]
	>=sys-power/upower-0.99.0-r1
	>=sys-libs/kpmcore-3.2.0
	sys-boot/os-prober
	sys-auth/polkit-qt5
	sys-fs/udisks:2
	virtual/udev"

S=${WORKDIR}

src_unpack() {
	:
}

src_prepare() {
	:
}

src_configure() {
	:
}

src_compile() {
	:
}

src_install() {
	:
}
