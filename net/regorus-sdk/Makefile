# $NetBSD$

DISTNAME=	regorus-sdk-0.2.2
CATEGORIES=	net
MASTER_SITES=	# None
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	msk@petabi.com
HOMEPAGE=	http://petabi.com/
COMMENT=	Software development kit for REgorus

USE_CMAKE=	yes
USE_LANGUAGES+=	c c++

CMAKE_ARGS=	-DCMAKE_BUILD_TYPE=Release

BUILDLINK_DEPMETHOD.atf?=		build
.include "../../devel/atf/buildlink3.mk"
BUILDLINK_DEPMETHOD.boost-headers?=	full
.include "../../devel/boost-headers/buildlink3.mk"
BUILDLINK_DEPMETHOD.rematch?=		full
.include "../../devel/rematch/buildlink3.mk"
BUILDLINK_DEPMETHOD.pius-netmap?=	full
.include "../../net/pius-netmap/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
