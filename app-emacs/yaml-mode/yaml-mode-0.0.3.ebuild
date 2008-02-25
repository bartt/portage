# Copyright 2008 Bart Teeuwisse
# Distributed under the terms of the GNU General Public License v2

inherit elisp

DESCRIPTION="A major mode for editing files in the YAML data serialization format"
HOMEPAGE="http://yaml-mode.clouder.jp/"
SRC_URI="http://yaml-mode.clouder.jp/attachment/wiki/WikiStart/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ppc x86"
IUSE=""

DEPEND="app-arch/tar"
RDEPEND=""

SITEFILE=50${PN}-gentoo.el
DOCS="Changes README"

src_compile() {
    sed -i~ 's/FLAGS = /FLAGS = --no-site-file /' ${S}/Makefile
	emake EMACS=emacs || die "emake failed"
}

src_install() {
    elisp_src_install
    elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die
}
