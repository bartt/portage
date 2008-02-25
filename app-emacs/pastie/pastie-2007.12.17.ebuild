# Copyright 2008 Bart Teeuwisse
# Distributed under the terms of the GNU General Public License v2

inherit elisp

DESCRIPTION="Allows you to paste to http://pastie.caboo.se/ from Emacs."
HOMEPAGE="http://www.emacswiki.org/cgi-bin/wiki/Pastie"
SRC_URI="http://www.emacswiki.org/cgi-bin/wiki/download/pastie.el"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ppc x86"
IUSE=""

DEPEND=""
RDEPEND=""

SITEFILE=50${PN}-gentoo.el
DOCS=""

src_unpack() {
    cp ${DISTDIR}/${A} ${WORKDIR}
}

src_install() {
    elisp_src_install
    elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die
}
