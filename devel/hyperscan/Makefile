# $NetBSD$

DISTNAME=	hyperscan-4.3.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=01org/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://01.org/hyperscan
COMMENT=	High-performance regular expression matching library
LICENSE=	modified-bsd

BUILD_DEPENDS+=	ragel-[0-9]*:../../devel/ragel

WRKSRC=		${WRKDIR}/${PKGNAME}
USE_CMAKE=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	libhs.pc.in

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
