# $NetBSD$

DISTNAME=	bazel-0.7.0-installer-darwin-x86_64
PKGNAME=	${DISTNAME:S/-installer-darwin-x86_64//}
CATEGORIES=	devel
MASTER_SITES=	https://github.com/bazelbuild/bazel/releases/download/${PKGVERSION_NOREV}/
EXTRACT_SUFX=	.sh
EXTRACT_CMD=	${SH} ${DOWNLOADED_DISTFILE} --prefix=${WRKDIR}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://bazel.build/
COMMENT=	Fast, scalable, multi-language, and extensible build system
LICENSE=	apache-2.0

ONLY_FOR_PLATFORM=	Darwin-*-x86_64

NO_BUILD=	yes
NO_CONFIGURE=	yes
USE_TOOLS+=	pax sh

INSTALLATION_DIRS+=	bin

do-install:
	cd ${WRKDIR} && ${PAX} -rw lib ${DESTDIR}${PREFIX}
	${LN} -sf ${PREFIX}/lib/bazel/bin/bazel \
		${DESTDIR}${PREFIX}/bin/

.include "../../mk/bsd.pkg.mk"
