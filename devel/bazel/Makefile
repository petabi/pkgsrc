# $NetBSD$

DISTNAME=	bazel-0.7.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=bazelbuild/}
GITHUB_PROJECT=	bazel
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://bazel.build/
COMMENT=	Fast, scalable, multi-language, and extensible build system
LICENSE=	apache-2.0

USE_JAVA=	yes
USE_TOOLS+=	sh tr

CHECK_PORTABILITY_SKIP=	third_party/protobuf/3.4.0/post_process_dist.sh

.include "../../mk/java-vm.mk"

do-build:
	cd ${WRKSRC} && ${SH} compile.sh

.include "../../mk/bsd.pkg.mk"
