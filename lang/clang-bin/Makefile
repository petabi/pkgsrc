# $NetBSD$
#

DISTNAME=	clang+llvm-5.0.0-x86_64-apple-darwin
PKGNAME=	clang-bin-5.0.0
CATEGORIES=	lang
MASTER_SITES=	http://llvm.org/releases/5.0.0/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://llvm.org/
COMMENT=	Binary package for LLVM compiler infrastructure

CONFLICTS+=	clang-[0-9]*

NO_BUILD=	yes
USE_LANGUAGES=	# none
USE_TOOLS+=	pax perl

CHECK_SHLIBS_SKIP=	lib/*.dylib  # failed with @rpath
ONLY_FOR_PLATFORM=	Darwin-*-x86_64

REPLACE_PERL=	bin/scan-build libexec/c++-analyzer libexec/ccc-analyzer
REPLACE_PYTHON=	bin/git-clang-format bin/scan-view \
		share/clang/clang-format-diff.py \
		share/clang/clang-tidy-diff.py \
		share/clang/run-clang-tidy.py \
		share/clang/run-find-all-symbols.py

INSTALLATION_DIRS=	bin include lib libexec man/man1 \
			share/clang \
			share/scan-build share/scan-view

.include "../../lang/python/application.mk"

do-install:
	cd ${WRKSRC}/bin && ${PAX} -rw . ${DESTDIR}${PREFIX}/bin
	cd ${WRKSRC}/include && ${PAX} -rw . ${DESTDIR}${PREFIX}/include
	cd ${WRKSRC}/lib && ${PAX} -rw . ${DESTDIR}${PREFIX}/lib
	${INSTALL_LIB} ${WRKSRC}/libexec/* ${DESTDIR}${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/share/man/man1/* ${DESTDIR}${PREFIX}/man/man1
	cd ${WRKSRC}/share/clang && \
		${PAX} -rw . ${DESTDIR}${PREFIX}/share/clang
	cd ${WRKSRC}/share/scan-build && \
		${PAX} -rw . ${DESTDIR}${PREFIX}/share/scan-build
	cd ${WRKSRC}/share/scan-view && \
		${PAX} -rw . ${DESTDIR}${PREFIX}/share/scan-view

.include "../../mk/bsd.pkg.mk"
