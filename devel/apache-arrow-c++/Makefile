# $NetBSD$

GITHUB_PROJECT=	arrow
DISTNAME=	apache-arrow-0.7.1
PKGNAME=	${DISTNAME:S/arrow-/arrow-c++-/}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=apache/}
GITHUB_TAG=	${DISTNAME}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://arrow.apache.org/
COMMENT=	Cross-language development platform for in-memory data
LICENSE=	apache-2.0

TOOLS_DEPENDS.cmake=	cmake>=3.2:../../devel/cmake

PYTHON_VERSIONS_ACCEPTED=	36 # For convenience

USE_CMAKE=	yes
USE_LANGUAGES=	c c++11
USE_TOOLS+=	pkg-config
WRKSRC=		${WRKDIR}/arrow-${DISTNAME}/cpp

CMAKE_ARGS+=	-DCMAKE_BUILD_TYPE=Release
CMAKE_ARGS+=	-DARROW_INSTALL_NAME_RPATH=OFF -DARROW_PYTHON=ON
CONFIGURE_ENV+=	BOOST_ROOT=${BUILDLINK_PREFIX.boost-libs}
CONFIGURE_ENV+=	BROTLI_HOME=${BUILDLINK_PREFIX.brotli}
CONFIGURE_ENV+=	FLATBUFFERS_HOME=${BUILDLINK_PREFIX.flatbuffers}
CONFIGURE_ENV+=	GFLAGS_HOME=${BUILDLINK_PREFIX.gflags}
CONFIGURE_ENV+=	GTEST_HOME=${BUILDLINK_PREFIX.googletest}
CONFIGURE_ENV+=	LZ4_HOME=${BUILDLINK_PREFIX.lz4}
CONFIGURE_ENV+=	RAPIDJSON_HOME=${BUILDLINK_PREFIX.rapidjson}
CONFIGURE_ENV+=	SNAPPY_HOME=${BUILDLINK_PREFIX.snappy}
CONFIGURE_ENV+=	ZLIB_HOME=${BUILDLINK_PREFIX.zlib}
CONFIGURE_ENV+=	ZSTD_HOME=${BUILDLINK_PREFIX.zstd}

PKGCONFIG_OVERRIDE=	arrow-compute.pc arrow.pc

.include "../../archivers/brotli/buildlink3.mk"
.include "../../archivers/lz4/buildlink3.mk"
.include "../../archivers/zstd/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/flatbuffers/buildlink3.mk"
.include "../../devel/gflags/buildlink3.mk"
.include "../../devel/googletest/buildlink3.mk"
.include "../../devel/snappy/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../lang/python/pyversion.mk"
BUILDLINK_DEPMETHOD.py-numpy?=	build
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../textproc/rapidjson/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
