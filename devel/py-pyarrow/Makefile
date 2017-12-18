# $NetBSD$

DISTNAME=	apache-arrow-0.7.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/apache-/py/}
EGG_NAME=	${DISTNAME:S/apache-/py/:C/-([^0-9])/_\1/}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=apache/}
GITHUB_PROJECT=	arrow
GITHUB_TAG=	${DISTNAME}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://arrow.apache.org/
COMMENT=	Python library for Apache Arrow
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-six>=1.0.0:../../lang/py-six

USE_LANGUAGES=	c c++
USE_TOOLS+=	cmake pkg-config
WRKSRC=		${WRKDIR}/arrow-${DISTNAME}/python

SUBST_CLASSES+=		fix-cmd
SUBST_STAGE.fix-cmd=	pre-configure
SUBST_MESSAGE.fix-cmd=	Fixing cmd names.
SUBST_FILES.fix-cmd=	cmake_modules/FindCython.cmake
SUBST_SED.fix-cmd=	-e 's, cython , cython${PYVERSSUFFIX} ,g'

MAKE_ENV+=	PYARROW_BUILD_TYPE=Release
MAKE_ENV+=	PYARROW_CMAKE_OPTIONS="-DPYARROW_BUILD_PARQUET=ON"

.include "../../devel/apache-arrow-c++/buildlink3.mk"
.include "../../devel/apache-parquet-cpp/buildlink3.mk"
.include "../../devel/py-cython/buildlink3.mk"
.include "../../lang/python/egg.mk"
BUILDLINK_API_DEPENDS.py-numpy+=	${PYPKGPREFIX}-numpy>=1.10
.include "../../math/py-numpy/buildlink3.mk"

post-install:
	${MV} ${DESTDIR}${PREFIX}/bin/plasma_store \
		${DESTDIR}${PREFIX}/bin/plasma_store${PYVERSSUFFIX}

.include "../../mk/bsd.pkg.mk"
