# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

KMNAME="${PN/-*/}"
KMNOMODULE="true"

inherit kde4-meta

DESCRIPTION="KDE miscellaneous SDK tools"
KEYWORDS=""
IUSE="debug doc"

KMEXTRA="
	kmtrace/
	kpartloader/
	kprofilemethod/
	kspy/
	kunittest/
	poxml/
	scheck/
"
