# $NetBSD$

DISTNAME=	bazel-0.7.0-dist
PKGNAME=	${DISTNAME:S/-dist//}
CATEGORIES=	devel
MASTER_SITES=	https://github.com/bazelbuild/bazel/releases/download/${PKGVERSION_NOREV}/
EXTRACT_SUFX=	.zip

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://bazel.build/
COMMENT=	Fast, scalable, multi-language, and extensible build system
LICENSE=	apache-2.0

DEPENDS+=	protobuf-[0-9]*:../../devel/protobuf

USE_JAVA=	run
USE_LANGUAGES+=	c++
USE_TOOLS+=	bash tr
WRKSRC=		${WRKDIR}

CHECK_PORTABILITY_SKIP=	third_party/protobuf/3.4.0/post_process_dist.sh

.include "../../mk/java-vm.mk"

do-build:
	${RUN} cd ${WRKSRC} && ${SETENV} BAZEL_WRKDIR=${WRKDIR}/work ${BASH} compile.sh

.include "../../mk/bsd.pkg.mk"
