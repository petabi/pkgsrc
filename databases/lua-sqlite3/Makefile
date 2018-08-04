# $NetBSD: Makefile,v 1.20 2019/11/02 15:38:01 rillig Exp $

DISTNAME=	lua-sqlite3-0.4.1
PKGNAME=	${LUA_PKGPREFIX}-sqlite3-0.4.1
PKGREVISION=	16
CATEGORIES=	databases
MASTER_SITES=	https://www.mroth.net/lua-sqlite3/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.mroth.net/lua-sqlite3/
COMMENT=	SQLite3 binding for LUA
LICENSE=	mit

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--libdir=${PREFIX}/${LUA_CDIR}
CONFIGURE_ARGS+=	--with-lua=${LUA_INTERPRETER:Q}

CFLAGS+=		-fPIC

INSTALLATION_DIRS+=	${LUA_LDIR} ${LUA_CDIR}

.include "../../mk/bsd.prefs.mk"

post-install:
	mv ${DESTDIR}${PREFIX}/${LUA_CDIR}/*.lua \
	   ${DESTDIR}${PREFIX}/${LUA_LDIR}
.if ${OPSYS} == "Darwin"
	install_name_tool -id ${PREFIX}/${LUA_CDIR}/libluasqlite3.so \
		${DESTDIR}${PREFIX}/${LUA_CDIR}/libluasqlite3.so
.endif


.include "../../databases/sqlite3/buildlink3.mk"
.include "../../lang/lua/module.mk"
.include "../../mk/bsd.pkg.mk"
