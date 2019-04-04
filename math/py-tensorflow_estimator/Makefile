# $NetBSD$

DISTNAME=	tensorflow_estimator-1.13.0-py2.py3-none-any
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:C/-py2.*//}
CATEGORIES=	math python
MASTER_SITES=	https://files.pythonhosted.org/packages/bb/48/13f49fc3fa0fdf916aa1419013bb8f2ad09674c275b4046d5ee669a46873/
EXTRACT_SUFX=	.whl

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/tensorflow/estimator
COMMENT=	High-level TensorFlow API
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-absl-py>=0.1.6:../../devel/py-absl-py
DEPENDS+=	${PYPKGPREFIX}-mock>=2.0.0:../../devel/py-mock
DEPENDS+=	${PYPKGPREFIX}-numpy>=1.13.3:../../math/py-numpy
DEPENDS+=	${PYPKGPREFIX}-six>=1.10.0:../../lang/py-six

NO_BUILD=	yes
USE_LANGUAGES=	# none
USE_TOOLS+=	pax:build unzip:build
WRKSRC=		${WRKDIR}

PY_PATCHPLIST=	yes

INSTALLATION_DIRS+=	${PYSITELIB}

.include "../../lang/python/extension.mk"

post-extract:
	unzip -q -d ${WRKDIR} ${WRKDIR}/${DISTFILES}

do-install:
	cd ${WRKDIR} && pax -rw tensorflow_estimator \
		${DESTDIR}${PREFIX}/${PYSITELIB}

.include "../../mk/bsd.pkg.mk"
