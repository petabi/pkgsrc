# $NetBSD: Makefile,v 1.8 2018/03/04 15:52:20 bsiegert Exp $

DISTNAME=	go-runewidth-0.0.2
PKGREVISION=	2
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GITHUB:=mattn/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/mattn/go-runewidth
COMMENT=	Provides functions to get fixed width of a string
LICENSE=	mit

WRKSRC=		${WRKDIR}
GO_DIST_BASE=	${GITHUB_PROJECT}-${GITHUB_TAG:S/v//}
GO_SRCPATH=	github.com/mattn/go-runewidth

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
