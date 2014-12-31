# $NetBSD$

DISTNAME=	pius-carp-0.4.2
CATEGORIES=	net
MASTER_SITES=	# None
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	msk@petabi.com
HOMEPAGE=	http://petabi.com/
COMMENT=	CARP library for PIUS

USE_CMAKE=	yes
USE_LANGUAGES=	c c++

CMAKE_ARGS=	-DCMAKE_BUILD_TYPE=Release

BUILDLINK_DEPMETHOD.pius-netmap?=	full
.include "../../net/pius-netmap/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
