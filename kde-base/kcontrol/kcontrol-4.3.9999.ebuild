# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

KMNAME="kdebase-runtime"
inherit kde4-meta

DESCRIPTION="The KDE Control Center"
KEYWORDS=""
IUSE="debug +handbook"

RDEPEND="
	!kdeprefix? (
		!kde-base/ksmserver:4.1[-kdeprefix]
		!<kde-base/systemsettings-4.2.91[-kdeprefix]
	)
	kdeprefix? ( !<kde-base/systemsettings-4.2.91:${SLOT}[kdeprefix] )
	$(add_kdebase_dep kdnssd)
	$(add_kdebase_dep khotkeys)
"
