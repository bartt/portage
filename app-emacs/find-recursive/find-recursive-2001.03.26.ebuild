# Copyright 2008 Bart Teeuwisse
# Distributed under the terms of the GNU General Public License v2

inherit elisp

DESCRIPTION="Find files recursively into a directory"
HOMEPAGE="http://www.emacswiki.org/cgi-bin/wiki/Pastie"
SRC_URI="http://www.webweavertech.com/ovidiu/emacs/find-recursive.txt"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ppc x86"
IUSE=""

DEPEND=""
RDEPEND=""

SITEFILE=50${PN}-gentoo.el
DOCS=""

src_unpack() {
    cp ${DISTDIR}/${A} ${WORKDIR}/${PN}.el
}

src_install() {
    elisp_src_install
    elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die
}
