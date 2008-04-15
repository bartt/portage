# Copyright 2008 Bart Teeuwisse
# Distributed under the terms of the GNU General Public License v2

inherit elisp

DESCRIPTION="Emacs support for rcodetools, a collection of Ruby code manipulation tools"
HOMEPAGE="http://eigenclass.org/hiki/rcodetools"
SRC_URI="http://rubyforge.org/frs/download.php/22023/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ppc x86"
IUSE=""

DEPEND="app-emacs/icicles"
RDEPEND=""

SITEFILE=51${PN}-gentoo.el
DOCS=""

src_compile() {
    elisp-compile rcodetools.el
}

src_install() {
    elisp_src_install
    elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die
}
