# $NetBSD$

DISTNAME=	pius-netmap-1.7.0
CATEGORIES=	net
MASTER_SITES=	# None
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	msk@petabi.com
HOMEPAGE=	http://petabi.com/
COMMENT=	Utilities to access netmap buffer

USE_CMAKE=	yes
USE_LANGUAGES+=	c c++

CMAKE_ARGS=	-DCMAKE_BUILD_TYPE=Release

BUILDLINK_DEPMETHOD.atf?=		build
.include "../../devel/atf/buildlink3.mk"
BUILDLINK_DEPMETHOD.boost-headers?=	full
.include "../../devel/boost-headers/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
