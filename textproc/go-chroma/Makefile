# $NetBSD$

DISTNAME=	chroma-0.4.0
PKGNAME=	go-${DISTNAME}
MASTER_SITES=	${MASTER_SITE_GITHUB:=alecthomas/}
CATEGORIES=	devel
GITHUB_TAG=	v${PKGVERSION_NOREV}
GITHUB_PROJECT= ${PKGBASE:S/^go-//}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/alecthomas/chroma
COMMENT=	General purpose syntax highlighter in pure Go
LICENSE=	mit

GO_DIST_BASE=	${GITHUB_PROJECT}-${PKGVERSION_NOREV}
GO_SRCPATH=	github.com/alecthomas/chroma

.include "../../devel/go-colorable/buildlink3.mk"
.include "../../devel/go-dlclark-regexp2/buildlink3.mk"
.include "../../devel/go-fnmatch/buildlink3.mk"
.include "../../devel/go-kingpin.v3-unstable/buildlink3.mk"
.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
