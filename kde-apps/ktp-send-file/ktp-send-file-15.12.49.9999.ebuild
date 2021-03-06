# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit kde5

DESCRIPTION="KDE Telepathy file manager plugin to send files to contacts"
HOMEPAGE="https://community.kde.org/Real-Time_Communication_and_Collaboration"

LICENSE="LGPL-2.1"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kiconthemes)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_kdeapps_dep ktp-common-internals)
	dev-qt/qtdbus:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	net-libs/telepathy-qt[qt5]
"
DEPEND="
	${COMMON_DEPEND}
	$(add_frameworks_dep kcmutils)
"
RDEPEND="
	${COMMON_DEPEND}
	$(add_kdeapps_dep ktp-contact-list)
	$(add_kdeapps_dep ktp-filetransfer-handler)
	!net-im/ktp-send-file
"
