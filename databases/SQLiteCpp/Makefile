# $NetBSD$

GITHUB_PROJECT=	SQLiteCpp
DISTNAME=	1.2.0
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_GITHUB:=SRombauts/}
EXTRACT_SUFX=	.zip
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://srombauts.github.io/SQLiteCpp/
COMMENT=	C++ SQLite3 wrapper
LICENSE=	mit

WRKSRC=		${WRKDIR}/SQLiteCpp-1.2.0
USE_CMAKE=	yes
USE_LANGUAGES=	c c++

INSTALLATION_DIRS+=	include/SQLiteCpp lib share/doc/SQLiteCpp

.include "../../databases/sqlite3/buildlink3.mk"

do-install:
.for f in CHANGELOG.txt LICENSE.txt README.md TODO.txt
	${INSTALL_DATA} ${WRKSRC}/${f} ${DESTDIR}${PREFIX}/share/doc/SQLiteCpp
.endfor
	${INSTALL_DATA} ${WRKSRC}/include/SQLiteCpp/* ${DESTDIR}${PREFIX}/include/SQLiteCpp/
	${INSTALL_LIB} ${WRKSRC}/libSQLiteCpp.a ${DESTDIR}${PREFIX}/lib/

.include "../../mk/bsd.pkg.mk"
