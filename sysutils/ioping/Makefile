# $NetBSD: Makefile,v 1.1 2018/02/28 09:48:36 wiz Exp $

DISTNAME=	ioping-1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=koct9i/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	miwarin@gmail.com
HOMEPAGE=	https://github.com/koct9i/ioping/
COMMENT=	Monitor I/O latency in real time
LICENSE=	gnu-gpl-v3

USE_TOOLS+=	gmake

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ioping ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ioping.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
