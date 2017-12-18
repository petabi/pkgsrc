# $NetBSD$

DISTNAME=	apache-parquet-cpp-1.3.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=apache/}
GITHUB_PROJECT=	parquet-cpp
GITHUB_TAG=	${DISTNAME}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://parquet.apache.org/
COMMENT=	C++ library to read and write the Apache Parquet data format
LICENSE=	apache-2.0

USE_CMAKE=	yes
USE_LANGUAGES=	c c++11
USE_TOOLS+=	pkg-config

CMAKE_ARGS+=	-DCMAKE_BUILD_TYPE=Release
CONFIGURE_ENV+=	GTEST_HOME=${BUILDLINK_PREFIX.googletest:Q}
CONFIGURE_ENV+=	THRIFT_HOME=${BUILDLINK_PREFIX.thrift-cpp:Q}

.include "../../devel/apache-arrow-c++/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/googletest/buildlink3.mk"
.include "../../devel/thrift-cpp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
