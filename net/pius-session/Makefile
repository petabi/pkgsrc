# $NetBSD$

DISTNAME=	pius-session-0.21.2
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
.include "../../net/libpcap/buildlink3.mk"
BUILDLINK_API_DEPENDS.petabi-ip_tools+=	petabi-ip_tools>=0.2.3
.include "../../net/petabi-ip_tools/buildlink3.mk"
.include "../../net/pius-carp/buildlink3.mk"
.include "../../net/pius-netmap/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
