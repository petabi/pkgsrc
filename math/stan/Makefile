# $NetBSD$

DISTNAME=	stan-2.17.1
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_GITHUB:=stan-dev/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://mc-stan.org/
COMMENT=	Platform for statistical modeling and computation
LICENSE=	modified-bsd

DEPENDS+=	stan-math-[0-9]*:../../math/stan

BUILD_TARGET=	bin/libstanc.a
USE_LANGUAGES=	c c++11
USE_TOOLS+=	gmake pax

INSTALLATION_DIRS+=	include/stan lib

.include "../../devel/boost-headers/buildlink3.mk"

do-install:
	cd ${WRKSRC}/src && pax -rw stan ${DESTDIR}${PREFIX}/include
	${INSTALL_LIB} ${WRKSRC}/bin/libstanc.a ${DESTDIR}${PREFIX}/lib

.include "../../mk/bsd.pkg.mk"
