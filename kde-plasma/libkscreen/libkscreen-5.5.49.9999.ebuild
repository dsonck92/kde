# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KDE_TEST="forceoptional"
VIRTUALX_REQUIRED="test"
inherit kde5

DESCRIPTION="KDE screen management library"
KEYWORDS=""
IUSE=""

DEPEND="
	dev-qt/qtdbus:5
	dev-qt/qtgui:5
	dev-qt/qtx11extras:5
	x11-libs/libxcb
"
RDEPEND="${DEPEND}
	!x11-libs/libkscreen:5
"

# requires running session
RESTRICT="test"
