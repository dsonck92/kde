# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

KMNAME="kdevelop"
KMMODULE="kdev-php-docs"
inherit kde4-base

DESCRIPTION="PHP documentation plugin for KDevelop 4"

KEYWORDS=""
LICENSE="GPL-2 LGPL-2"
IUSE="debug"

RDEPEND="
	!=dev-util/kdevelop-plugins-1.0.0
"
