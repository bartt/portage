# Copyright 2008 Bart Teeuwisse
# Distributed under the terms of the GNU General Public License v2

inherit elisp

DESCRIPTION="A convenient wrapper around ri. Offers autocompletion, colored output & asks for a class name if needed. Indispensible when coding Ruby!"
HOMEPAGE="http://rubyforge.org/projects/ri-emacs"
SRC_URI="http://rubyforge.org/frs/download.php/16392/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ppc x86"
IUSE=""

DEPEND=""
RDEPEND=""

SITEFILE=50${PN}-gentoo.el
DOCS=""

src_install() {
    elisp_src_install
    elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die
    cp ${WORKDIR}/ri-emacs.rb ${D}usr/share/emacs/site-lisp/${PN}/
}
