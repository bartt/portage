# Copyright 2008 Bart Teeuwisse
# Distributed under the terms of the GNU General Public License v2

inherit elisp

DESCRIPTION="ZenTest's autotest integration with emacs"
HOMEPAGE="http://www.emacswiki.org/cgi-bin/wiki/RyanDavis"
SRC_URI="http://www.emacswiki.org/cgi-bin/emacs/download/autotest.el"

LICENSE="MIT"
SLOT="0"
KEYWORDS="alpha amd64 ppc x86"
IUSE=""

DEPEND=""
RDEPEND="app-emacs/unit-test"

SITEFILE=60${PN}-gentoo.el
DOCS=""

src_unpack() {
    cp ${DISTDIR}/${A} ${WORKDIR}
}

src_install() {
    elisp_src_install
    elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die
}
