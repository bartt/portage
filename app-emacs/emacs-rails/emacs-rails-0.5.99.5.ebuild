# Copyright 2008 Bart Teeuwisse
# Distributed under the terms of the GNU General Public License v2

inherit elisp

DESCRIPTION="A minor mode for editing 'Ruby On Rails' code"
HOMEPAGE="http://rubyforge.org/projects/emacs-rails"
SRC_URI="http://rubyforge.org/frs/download.php/20976/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ppc x86"
IUSE=""

DEPEND="app-emacs/ruby-electric app-emacs/ruby-mode"
RDEPEND="app-emacs/snippet app-emacs/find-recursive app-emacs/ruby-electric app-emacs/ruby-mode"

SITEFILE=51${PN}-gentoo.el
DOCS="ChangeLog History README"

src_unpack() {
    unpack ${A}
    mv ${WORKDIR}/${PN}/* ${WORKDIR}
}

src_compile() {
    # elisp-compile *.el
    einfo "Skipping compilation"
}

src_install() {
    # elisp_src_install
    elisp-install ${PN} *.el || die "elisp-install failed";
    elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die
}
