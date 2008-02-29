# Copyright 2008 Bart Teeuwisse
# Distributed under the terms of the GNU General Public License v2

inherit elisp

DESCRIPTION="Electric commands editing for ruby files"
HOMEPAGE="http://shylock.uw.hu/Emacs/ruby-electric.el"
SRC_URI="http://shylock.uw.hu/Emacs/ruby-electric.el"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ppc x86"
IUSE=""

DEPEND=""
RDEPEND="app-emacs/ruby-mode"

SITEFILE=51${PN}-gentoo.el
DOCS=""

src_unpack() {
    cp ${DISTDIR}/${A} ${WORKDIR}
}

src_install() {
    elisp_src_install
    elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die
}
