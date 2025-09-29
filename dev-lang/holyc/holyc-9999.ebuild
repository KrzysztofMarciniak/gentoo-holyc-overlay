EAPI=8

DESCRIPTION="HolyC Compiler"
HOMEPAGE="https://holyc-lang.com/"
SRC_URI="https://github.com/Jamesbarford/holyc-lang/archive/refs/tags/beta-v0.0.10.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RESTRICT="!test? ( test )"

DEPEND="
    sys-devel/gcc
"
RDEPEND="
    ${DEPEND}
    sys-libs/glibc
"

src_configure() {
    :  
}

src_unpack() {
    default
    S="${WORKDIR}/holyc-lang-beta-v0.0.10"
}

src_compile() {
    emake || die "build failed"
}

src_test() {
    use test && emake unit-test || die "unit tests failed"
}

src_install() {
    emake DESTDIR="${D}" install || die "install failed"
    dodoc README*
}
