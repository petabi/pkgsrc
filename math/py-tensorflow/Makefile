# $NetBSD$

DISTNAME=	tensorflow-1.4.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	${MASTER_SITE_GITHUB:=tensorflow/}
GITHUB_PROJECT=	tensorflow
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://www.tensorflow.org/
COMMENT=	Library for numerical computation using data flow graphs
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-numpy>=1.12.1:../../math/py-numpy

HAS_CONFIGURE=	yes
#USE_LANGUAGES=	c c++ fortran

CONFIGURE_ENV+=	PYTHON_BIN_PATH=${PYTHONBIN}

.include "../../lang/python/egg.mk"
#.include "../../math/blas/buildlink3.mk"
#.include "../../math/lapack/buildlink3.mk"
#BUILDLINK_API_DEPENDS.py-numpy+=	${PYPKGPREFIX}-numpy>=1.6.1
#.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
