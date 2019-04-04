# $NetBSD$

DISTNAME=	tensorflow-1.13.1-cp37-cp37m-macosx_10_11_x86_64
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/tensorflow-/tensorflow-bin-/:C/-cp37.*//}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/d5/1c/3ac472009a5c54ae7ec5a3294520ca36d1908cd1e5cf3e3fd923f9b7b31f/
EXTRACT_SUFX=	.whl

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://www.tensorflow.org/
COMMENT=	Library for numerical computation using data flow graphs
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-Keras_Applications>=1.0.6:../../wip/py-Keras_Applications
DEPENDS+=	${PYPKGPREFIX}-Keras_Preprocessing>=1.0.5:../../wip/py-Keras_Preprocessing
DEPENDS+=	${PYPKGPREFIX}-absl-py>=0.1.6:../../devel/py-absl-py
DEPENDS+=	${PYPKGPREFIX}-astor>=0.6.0:../../devel/py-astor
DEPENDS+=	${PYPKGPREFIX}-gast>=0.2.0:../../wip/py-gast
DEPENDS+=	${PYPKGPREFIX}-grpcio>=1.8.6:../../net/py-grpcio
DEPENDS+=	${PYPKGPREFIX}-numpy>=1.13.3:../../math/py-numpy
DEPENDS+=	${PYPKGPREFIX}-protobuf>=3.6.1:../../devel/py-protobuf
DEPENDS+=	${PYPKGPREFIX}-six>=1.10.0:../../lang/py-six
DEPENDS+=	${PYPKGPREFIX}-tensorboard>=1.13.0:../../math/py-tensorboard
DEPENDS+=	${PYPKGPREFIX}-tensorflow_estimator>=1.13.0:../../math/py-tensorflow_estimator
DEPENDS+=	${PYPKGPREFIX}-termcolor>=1.1.0:../../devel/py-termcolor

ONLY_FOR_PLATFORM=		Darwin-1[5-9].*-x86_64
PYTHON_VERSIONS_ACCEPTED=	37

NO_BUILD=	yes
USE_LANGUAGES=	# none
USE_TOOLS+=	pax:build unzip:build
WRKSRC=		${WRKDIR}

PY_PATCHPLIST=	yes
REPLACE_PYTHON=	tensorflow-${PKGVERSION_NOREV}.data/purelib/tensorflow/aux-bin/tflite_convert

INSTALLATION_DIRS+=	${PYSITELIB}

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
.PHONY: fix-darwin-install-name
post-install: fix-darwin-install-name
fix-darwin-install-name:
	${FIND} ${DESTDIR}${PREFIX} -name "*.so" |                      \
		while read lib; do                                      \
		libname=`basename $${lib}`;                             \
		libdir=`dirname $${lib} | sed -e 's,${DESTDIR},,'`;     \
		chmod u+w $${lib};					\
		install_name_tool -id $${libdir}/$${libname} $${lib};   \
	done
.endif

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"

post-extract:
	unzip -q -d ${WRKDIR} ${WRKDIR}/${DISTFILES}

do-install:
	cd ${WRKDIR} && pax -rw tensorflow-${PKGVERSION_NOREV}.dist-info ${DESTDIR}${PREFIX}/${PYSITELIB}
	cd ${WRKDIR}/tensorflow-${PKGVERSION_NOREV}.data/purelib && pax -rw tensorflow ${DESTDIR}${PREFIX}/${PYSITELIB}

.include "../../mk/bsd.pkg.mk"
