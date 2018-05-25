# $NetBSD: Makefile,v 1.1 2018/05/25 00:53:47 minskim Exp $

DISTNAME=	go-symbols-0.0.20180523
MASTER_SITES=	${MASTER_SITE_GITHUB:=acroca/}
CATEGORIES=	devel
GITHUB_TAG=	953befd75e223f514580fcb698aead0dd6ad3421

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/acroca/go-symbols
COMMENT=	Utility for extracting package symbols from Go
LICENSE=	mit

GO_DIST_BASE=	${GITHUB_PROJECT}-${GITHUB_TAG}
GO_SRCPATH=	github.com/acroca/${GITHUB_PROJECT}

.include "../../devel/go-tools/buildlink3.mk"
.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
