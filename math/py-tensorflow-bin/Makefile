# $NetBSD$

DISTNAME=	tensorflow-1.4.0-cp36-cp36m-macosx_10_11_x86_64
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/tensorflow-/tensorflow-bin-/:C/-cp36.*//}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/a9/72/4f573aa9d41e740e79594a0bd949288f2eb4286f453cf560799eaa29d024/
EXTRACT_SUFX=	.whl

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://www.tensorflow.org/
COMMENT=	Library for numerical computation using data flow graphs
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-tensorflow-tensorboard>=0.4.0rc1:../../math/py-tensorflow-tensorboard
DEPENDS+=	${PYPKGPREFIX}-six>=1.10.0:../../lang/py-six
DEPENDS+=	${PYPKGPREFIX}-protobuf>=3.3.0:../../devel/py-protobuf
DEPENDS+=	${PYPKGPREFIX}-numpy>=1.12.1:../../math/py-numpy

ONLY_FOR_PLATFORM=		Darwin-1[5-9].*-x86_64
PYTHON_VERSIONS_ACCEPTED=	36

NO_BUILD=	yes
NO_CONFIGURE=	yes
USE_LANGUAGES=	# none
USE_TOOLS+=	pax:build unzip:build
WRKSRC=		${WRKDIR}

PY_PATCHPLIST=	yes

INSTALLATION_DIRS+=	${PYSITELIB}

.include "../../lang/python/extension.mk"

post-extract:
	unzip -q -d ${WRKDIR} ${WRKDIR}/${DISTFILES}

do-install:
	cd ${WRKDIR} && pax -rw tensorflow-1.4.0.dist-info ${DESTDIR}${PREFIX}/${PYSITELIB}
	cd ${WRKDIR}/tensorflow-1.4.0.data/purelib && pax -rw tensorflow ${DESTDIR}${PREFIX}/${PYSITELIB}

.include "../../mk/bsd.pkg.mk"
