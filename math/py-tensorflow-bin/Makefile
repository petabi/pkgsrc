# $NetBSD$

DISTNAME=	tensorflow-1.7.0-cp36-cp36m-macosx_10_11_x86_64
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/tensorflow-/tensorflow-bin-/:C/-cp36.*//}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/64/6a/c0681f99098edc2ac32e7485ca5046cd47461b6ac379f65932c817913b34/
EXTRACT_SUFX=	.whl

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://www.tensorflow.org/
COMMENT=	Library for numerical computation using data flow graphs
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-absl-py-[0-9]*:../../devel/py-absl-py
DEPENDS+=	${PYPKGPREFIX}-numpy>=1.12.1:../../math/py-numpy
DEPENDS+=	${PYPKGPREFIX}-protobuf>=3.3.0:../../devel/py-protobuf
DEPENDS+=	${PYPKGPREFIX}-six>=1.10.0:../../lang/py-six
DEPENDS+=	${PYPKGPREFIX}-tensorboard>=1.7.0:../../math/py-tensorboard

ONLY_FOR_PLATFORM=		Darwin-1[5-9].*-x86_64
PYTHON_VERSIONS_ACCEPTED=	36

NO_BUILD=	yes
NO_CONFIGURE=	yes
USE_LANGUAGES=	# none
USE_TOOLS+=	pax:build unzip:build
WRKSRC=		${WRKDIR}

PY_PATCHPLIST=	yes

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
		install_name_tool -id $${libdir}/$${libname} $${lib};   \
	done
.endif

.include "../../lang/python/extension.mk"

post-extract:
	unzip -q -d ${WRKDIR} ${WRKDIR}/${DISTFILES}

do-install:
	cd ${WRKDIR} && pax -rw tensorflow-${PKGVERSION_NOREV}.dist-info ${DESTDIR}${PREFIX}/${PYSITELIB}
	cd ${WRKDIR}/tensorflow-${PKGVERSION_NOREV}.data/purelib && pax -rw tensorflow ${DESTDIR}${PREFIX}/${PYSITELIB}

.include "../../mk/bsd.pkg.mk"
