# $NetBSD$

DISTNAME=	rematch-1.6
CATEGORIES=	devel
MASTER_SITES=	# None
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	msk@petabi.com
HOMEPAGE=	http://petabi.com/
COMMENT=	Regular expression matching library

USE_CMAKE=	yes
USE_LANGUAGES=	c c++

CMAKE_ARGS=	-DCMAKE_BUILD_TYPE=Release

BUILDLINK_DEPMETHOD.atf?=	build
BUILDLINK_DEPMETHOD.llvm?=	build
BUILDLINK_API_DEPENDS.pius-session+=	pius-session>=0.21.0

.include "../../benchmarks/google-benchmark/buildlink3.mk"
.include "../../devel/atf/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/pcre2/buildlink3.mk"
.include "../../lang/llvm/buildlink3.mk"
.include "../../net/pius-carp/buildlink3.mk"
.include "../../net/pius-netmap/buildlink3.mk"
.include "../../net/pius-session/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
