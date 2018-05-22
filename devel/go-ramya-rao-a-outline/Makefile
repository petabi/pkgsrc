# $NetBSD$

DISTNAME=	go-outline-0.0.20170803
PKGNAME=	${DISTNAME:S/go-/go-ramya-rao-a-/}
MASTER_SITES=	${MASTER_SITE_GITHUB:=ramya-rao-a/}
CATEGORIES=	devel
GITHUB_PROJECT=	go-outline
GITHUB_TAG=	9e9d089bb61a5ce4f8e0c8d8dc5b4e41b0e02a48

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/ramya-rao-a/go-outline
COMMENT=	Utility to extract JSON representation from Go
LICENSE=	mit

GO_DIST_BASE=	${GITHUB_PROJECT}-${GITHUB_TAG}
GO_SRCPATH=	github.com/ramya-rao-a/go-outline

.include "../../devel/go-tools/buildlink3.mk"
.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
