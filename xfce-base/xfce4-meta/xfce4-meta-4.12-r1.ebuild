# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="The Xfce Desktop Environment (meta package)"
HOMEPAGE="http://www.xfce.org/"
SRC_URI=""

LICENSE="metapackage"
SLOT="0"
KEYWORDS="alpha amd64 arm ~arm64 hppa ia64 ~mips ppc ppc64 sparc x86 ~x86-fbsd ~x86-freebsd ~x86-interix ~amd64-linux ~ia64-linux ~x86-linux"
IUSE="minimal +svg"

RDEPEND="x11-themes/hicolor-icon-theme
	>=xfce-base/xfce4-appfinder-4.12
	>=xfce-base/xfce4-panel-4.12
	>=xfce-base/xfce4-session-4.12
	>=xfce-base/xfce4-settings-4.12
	>=xfce-base/xfwm4-4.12
	>=x11-misc/pcmanfm-1.2.3
	!minimal? (
		media-fonts/dejavu
		virtual/freedesktop-icon-theme
		)
	svg? ( gnome-base/librsvg )"