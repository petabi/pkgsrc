# $NetBSD: Makefile,v 1.17 2018/01/14 17:33:58 rillig Exp $

DISTNAME=	fortune-strfile-0
CATEGORIES=	games
DISTFILES=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Tool to prepare a fortune database

WRKSRC=			${WRKDIR}
USE_BSD_MAKEFILE=	yes
USE_TOOLS+=		nroff groff
INSTALLATION_DIRS=	bin ${PKGMANDIR}/cat8 ${PKGMANDIR}/man8

do-extract:
	cp ${FILESDIR}/strfile.* ${FILESDIR}/Makefile ${WRKSRC}

.include "../../mk/bsd.pkg.mk"
