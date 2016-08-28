# $NetBSD$

DISTNAME=	auto-opt-0.2.1
CATEGORIES=	devel
MASTER_SITES=	# None
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	msk@petabi.com
HOMEPAGE=	http://petabi.com/
COMMENT=	Utility for handling configuration files in Lua

USE_CMAKE=	yes
USE_LANGUAGES+=	c c++

CMAKE_ARGS=	-DCMAKE_BUILD_TYPE=Release

BUILDLINK_DEPMETHOD.atf?=		build
.include "../../devel/atf/buildlink3.mk"
BUILDLINK_DEPMETHOD.boost-headers?=	full
.include "../../devel/boost-headers/buildlink3.mk"
.include "../../lang/lua/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
