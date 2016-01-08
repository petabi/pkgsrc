# $NetBSD$

DISTNAME=	pius-session-0.18.3
CATEGORIES=	net
MASTER_SITES=	# None
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	msk@petabi.com
HOMEPAGE=	http://petabi.com/
COMMENT=	Network session management module for PIUS

USE_CMAKE=	yes
USE_LANGUAGES=	c c++

CMAKE_ARGS=	-DCMAKE_BUILD_TYPE=Release

BUILDLINK_DEPMETHOD.atf?=	build
.include "../../devel/atf/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../net/pius-carp/buildlink3.mk"
.include "../../net/pius-netmap/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
