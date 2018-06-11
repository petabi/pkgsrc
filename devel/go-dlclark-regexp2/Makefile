# $NetBSD$

DISTNAME=	dlclark-regexp2-1.1.6
PKGNAME=	go-${DISTNAME}
MASTER_SITES=	${MASTER_SITE_GITHUB:=dlclark/}
CATEGORIES=	devel
GITHUB_TAG=	v${PKGVERSION_NOREV}
GITHUB_PROJECT=	regexp2

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/dlclark/regexp2
COMMENT=	Regex engine for Go based on the .NET engine
LICENSE=	mit

GO_DIST_BASE=	${GITHUB_PROJECT}-${PKGVERSION_NOREV}
GO_SRCPATH=	${HOMEPAGE:S,https://,,}

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
