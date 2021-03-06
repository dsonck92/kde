# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KDE_TEST="false"
KMNAME="kdepim"
inherit kde5

DESCRIPTION="Library for encryption handling"
LICENSE="LGPL-2+"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	$(add_frameworks_dep kcompletion)
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kiconthemes)
	$(add_frameworks_dep ktextwidgets)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kwindowsystem)
	$(add_kdeapps_dep gpgmepp)
	$(add_kdeapps_dep kmime)
	$(add_kdeapps_dep pimcommon)
	dev-qt/designer:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtxml:5
"
DEPEND="${COMMON_DEPEND}
	sys-devel/gettext
"
RDEPEND="${COMMON_DEPEND}
	!<kde-apps/kdepim-15.08.50:5
	!kde-apps/kdepim-common-libs:4
"

if [[ ${KDE_BUILD_TYPE} = live ]] ; then
	S="${WORKDIR}/${P}/${PN}"
else
	S="${WORKDIR}/${KMNAME}-${PV}/${PN}"
fi
