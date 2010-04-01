# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

KMNAME="kdebase-apps"
inherit kde4-meta

DESCRIPTION="KDE tool that looks for well-known apps in your path and creates entries for them in the KDE menu"
KEYWORDS=""
IUSE="debug +handbook"

# Moved away to extragear around 4.4.70
RDEPEND="
	!kdeprefix? ( !kde-misc/kappfinder:4 )
"
