# $NetBSD$

DISTNAME=	pius-arp-1.4.0
CATEGORIES=	net
MASTER_SITES=	# None
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	msk@petabi.com
HOMEPAGE=	http://petabi.com/
COMMENT=	ARP/NDP library for PIUS

USE_CMAKE=	yes
USE_LANGUAGES=	c c++

CMAKE_ARGS=	-DCMAKE_BUILD_TYPE=Release

BUILDLINK_DEPMETHOD.boost-libs?=	build
# Should be replaced with boost-headers once CMakeLists.txt is fixed
# not to search for the system component of the Boost library.
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
