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

BUILD_DEPENDS+=	bazel>=0.5.4:../../wip/bazel
DEPENDS+=	${PYPKGPREFIX}-numpy>=1.12.1:../../math/py-numpy
DEPENDS+=	${PYPKGPREFIX}-protobuf>=3.3.0:../../devel/py-protobuf
DEPENDS+=	${PYPKGPREFIX}-six>=1.10.0:../../lang/py-six
DEPENDS+=	${PYPKGPREFIX}-tensorflow-tensorboard>=0.4.0rc1:../../math/py-tensorflow-tensorboard

.include "../../lang/python/pyversion.mk"
.if "${PYPKGPREFIX}" == "py27"
DEPENDS+=	${PYPKGPREFIX}-enum34>=1.1.6:../../devel/py-enum34
.endif

HAS_CONFIGURE=	yes
USE_LANGUAGES=	c c++

CONFIGURE_ENV+=	CC_OPT_FLAGS=${CFLAGS:Q} \
		PYTHON_BIN_PATH=${PYTHONBIN:Q} \
		PYTHON_LIB_PATH=${LOCALBASE}/${PYSITELIB:Q} \
		TF_ENABLE_XLA=0 TF_NEED_CUDA=0 \
		TF_NEED_HDFS=0 TF_NEED_GCP=0 TF_NEED_GDR=0 \
		TF_NEED_MPI=0 TF_NEED_OPENCL=0 TF_NEED_S3=0 \
		TF_NEED_VERBS=0

BAZEL=	${LOCALBASE}/bin/bazel

.include "../../lang/python/egg.mk"

pre-build:
	cd ${WRKSRC} && \
		${BAZEL} --output_base=${WRKDIR}/bazel build --config=opt \
		//tensorflow/tools/pip_package:build_pip_package \
		--verbose_failures
	cd ${WRKSRC} && ${SETENV} TMPDIR=${WRKDIR} \
		bazel-bin/tensorflow/tools/pip_package/build_pip_package \
		${WRKDIR}/whl

.include "../../mk/bsd.pkg.mk"
