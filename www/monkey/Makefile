# $NetBSD$

DISTNAME=	monkey-1.6.9
CATEGORIES=	www
MASTER_SITES=	http://monkey-project.com/releases/1.6/

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://monkey-project.com/
COMMENT=	Fast and lightweight web server
LICENSE=	apache-2.0

USE_CMAKE=	yes
USE_TOOLS+=	pkg-config

CMAKE_ARGS+=	-DWITH_MBEDTLS_SHARED=Yes

# https://plus.google.com/110391426075643497490/posts/UbxNrngiwE9
CMAKE_ARGS+=	-DWITH_PLUGIN_CGI=No
CMAKE_ARGS+=	-DWITH_PLUGIN_TLS=Yes

PKGCONFIG_OVERRIDE+=	monkey.pc.in

INSTALLATION_DIRS+=	lib/pkgconfig

.include "../../security/mbedtls/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"

post-configure:
	${SED}	-e 's,PREFIX,${PREFIX},g' \
		-e 's,LIBDIR,$${prefix}/lib,g' \
		-e 's,INCDIR,$${prefix}/include,g' \
		-e 's,VERSION,${PKGVERSION_NOREV},g' \
		-e 's, -lmonkey , -lmonkey -lmk_core ,g' \
		${WRKSRC}/monkey.pc.in > ${WRKSRC}/monkey.pc

post-install:
	${INSTALL_LIB} ${WRKSRC}/mk_server/libmonkey.a ${DESTDIR}${PREFIX}/lib
	${INSTALL_LIB} ${WRKSRC}/mk_core/libmk_core.a ${DESTDIR}${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/monkey.pc \
		${DESTDIR}${PREFIX}/lib/pkgconfig/

.include "../../mk/bsd.pkg.mk"
