# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PLOCALES="ar be bg bn ca cs da de el en_GB es et eu fa fi fo fr gl he hr hu id
is it ja kk km ko lg lt lv ms nl pa pl pt pt_BR ro ru si sk sl sr sr@latin sv
te th tr tt_RU ug uk vi zh_CN zh_TW"
PLOCALE_BACKUP="en_GB"

inherit eutils fdo-mime l10n readme.gentoo-r1

MY_PV="${PV/_/}"
MY_P="${PN}-${MY_PV}"

DESCRIPTION="Fast lightweight tabbed filemanager"
HOMEPAGE="https://wiki.lxde.org/en/PCManFM"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 arm ~arm64 ~mips ppc x86"
IUSE="debug gtk gtk3"

RDEPEND=">=dev-libs/glib-2.18:2
	gtk? ( >=x11-libs/gtk+-2.16:2 >=x11-libs/libfm-${PV}:=[gtk(+)] )
	gtk3? ( >=x11-libs/gtk+-3.18:3 >=x11-libs/libfm-${PV}:=[gtk3(+)] )
	>=lxde-base/menu-cache-0.3.2
	x11-misc/shared-mime-info
	virtual/eject
	virtual/freedesktop-icon-theme"
DEPEND="${RDEPEND}
	app-arch/xz-utils
	>=dev-util/intltool-0.40
	virtual/pkgconfig
	sys-devel/gettext"

S="${WORKDIR}"/${MY_P}

REQUIRED_USE="gtk3? ( gtk )"

PATCHES=( "${FILESDIR}"/${PN}-1.2.5-CVE-2017-8934.patch )

src_prepare() {
	default

	export LINGUAS="${LINGUAS:-${PLOCALE_BACKUP}}"
	l10n_get_locales > po/LINGUAS || die
}

src_configure() {
	if use gtk3; then
		econf \
			--sysconfdir="${EPREFIX}"/etc \
			--with-gtk=3 \
			$(use_enable debug)
	else
		econf \
			--sysconfdir="${EPREFIX}"/etc \
			$(use_enable debug)
	fi
}

src_install() {
	default

	local DOC_CONTENTS="PCmanFM can optionally support the menu://applications/
	location. You should install lxde-base/lxmenu-data for that functionality."
	readme.gentoo_create_doc
}

pkg_postinst() {
	fdo-mime_desktop_database_update
	fdo-mime_mime_database_update
	readme.gentoo_print_elog
}

pkg_postrm() {
	fdo-mime_desktop_database_update
	fdo-mime_mime_database_update
}
