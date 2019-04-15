# $NetBSD$

DISTNAME=	tensorflow_hub-0.4.0-py2.py3-none-any
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/_/-/:C/-py2.*//}
CATEGORIES=	math python
MASTER_SITES=	https://files.pythonhosted.org/packages/10/5c/6f3698513cf1cd730a5ea66aec665d213adf9de59b34f362f270e0bd126f/
EXTRACT_SUFX=	.whl

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/tensorflow/estimator
COMMENT=	Library for reusing parts of TensorFlow models
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-numpy>=1.12.0:../../math/py-numpy
DEPENDS+=	${PYPKGPREFIX}-protobuf>=3.4.0:../../devel/py-protobuf
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
	cd ${WRKDIR} && pax -rw tensorflow_hub \
		${DESTDIR}${PREFIX}/${PYSITELIB}

.include "../../mk/bsd.pkg.mk"
