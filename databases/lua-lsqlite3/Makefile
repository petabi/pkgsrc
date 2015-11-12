# $NetBSD$

DISTNAME=	lsqlite3_fsl09w
PKGNAME=	${LUA_PKGPREFIX}-lsqlite3-0.9.3
CATEGORIES=	databases
MASTER_SITES=	http://lua.sqlite.org/index.cgi/zip/
EXTRACT_SUFX=	.zip

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://lua.sqlite.org/
COMMENT=	Binding for Lua to the SQLite3 database library
LICENSE=	mit

CFLAGS+=	-fPIC
LDFLAGS+=	-L${BUILDLINK_PREFIX.sqlite3}/lib
LIBS+=		-llua -lsqlite3

# A workaround for a check-shlibs error
CHECK_SHLIBS_SKIP=	${LUA_CDIR}/*

INSTALLATION_DIRS+=	${LUA_CDIR} ${LUA_DOCDIR} ${LUA_EXAMPLESDIR}

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../lang/lua/module.mk"

do-build:
	cd ${WRKSRC} &&						\
	${CC} ${CFLAGS} -c lsqlite3.c &&				\
	${CC} -shared ${LDFLAGS} -o lsqlite3.so lsqlite3.o ${LIBS}

do-install:
	${INSTALL_LIB} ${WRKSRC}/lsqlite3.so ${DESTDIR}${PREFIX}/${LUA_CDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/${LUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/HISTORY ${DESTDIR}${PREFIX}/${LUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DESTDIR}${PREFIX}/${LUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${DESTDIR}${PREFIX}/${LUA_EXAMPLESDIR}

.include "../../mk/bsd.pkg.mk"
