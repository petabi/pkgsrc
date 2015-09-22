# $NetBSD$
#

DISTNAME=	clang+llvm-3.7.0-x86_64-apple-darwin
PKGNAME=	clang-bin-3.7.0
CATEGORIES=	lang
MASTER_SITES=	http://llvm.org/releases/3.7.0/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://llvm.org/
COMMENT=	Binary package for LLVM compiler infrastructure

CONFLICTS+=	clang-[0-9]*

NO_BUILD=	yes
USE_LANGUAGES=	# none
USE_TOOLS+=	pax

ONLY_FOR_PLATFORM=	Darwin-*-x86_64

INSTALLATION_DIRS=	bin include lib share/doc share/llvm

do-install:
	cd ${WRKSRC}/bin && ${PAX} -rw . ${DESTDIR}${PREFIX}/bin
	cd ${WRKSRC}/include && ${PAX} -rw . ${DESTDIR}${PREFIX}/include
	${INSTALL_LIB} ${WRKSRC}/lib/*.dylib ${DESTDIR}${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/*.a ${DESTDIR}${PREFIX}/lib
	cd ${WRKSRC}/lib && ${PAX} -rw clang ${DESTDIR}${PREFIX}/lib
	cd ${WRKSRC}/docs && ${PAX} -rw llvm ${DESTDIR}${PREFIX}/share/doc
	cd ${WRKSRC}/share/llvm && ${PAX} -rw . ${DESTDIR}${PREFIX}/share/llvm

.include "../../mk/bsd.pkg.mk"
