# $NetBSD: Makefile,v 1.2 2018/03/04 15:52:15 bsiegert Exp $

DISTNAME=	go-isatty-0.0.3
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=mattn/}
DIST_SUBDIR=	${GITHUB_PROJECT}
GITHUB_TAG=	v0.0.3
GITHUB_PROJECT=	go-isatty

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://godoc.org/github.com/mattn/go-isatty
COMMENT=	Interface to isatty (is a tty)
LICENSE=	mit

GO_DIST_BASE=	${GITHUB_PROJECT}-${GITHUB_TAG:S/^v//}
GO_SRCPATH=	github.com/mattn/go-isatty

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
