# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit php-pear-r2

DESCRIPTION="PHP class to communicate with IRC networks"
LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="doc examples"
DOCS=( CREDITS FEATURES docs/HOWTO README.md )

src_install() {
	php-pear-r2_src_install
	use examples && dodoc -r docs/examples

	if use doc; then
		dodoc docs/DOCUMENTATION
		dodoc -r docs/HTML
	fi
}
