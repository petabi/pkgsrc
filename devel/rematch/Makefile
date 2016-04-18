# $NetBSD$

DISTNAME=	rematch-1.4.1
CATEGORIES=	devel
MASTER_SITES=	# None
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	msk@petabi.com
HOMEPAGE=	http://petabi.com/
COMMENT=	Regular expression matching library

USE_CMAKE=	yes
USE_LANGUAGES=	c c++

CMAKE_ARGS=	-DCMAKE_BUILD_TYPE=Release

.include "../../devel/atf/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/pcre2/buildlink3.mk"
.include "../../lang/llvm/buildlink3.mk"
.include "../../net/pius-carp/buildlink3.mk"
.include "../../net/pius-netmap/buildlink3.mk"
.include "../../net/pius-session/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
