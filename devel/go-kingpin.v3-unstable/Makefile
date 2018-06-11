# $NetBSD$

DISTNAME=	kingpin-3.0.0alpha20180311
PKGNAME=	go-${DISTNAME}
MASTER_SITES=	${MASTER_SITE_GITHUB:=alecthomas/}
CATEGORIES=	devel
GITHUB_TAG=	2b154cee082ef5c544fa8ea1750b9eb6581b0040
GITHUB_PROJECT=	${PKGBASE:S/^go-//}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/alecthomas/kingpin
COMMENT=	Go command line and flag parser
LICENSE=	mit

GO_DIST_BASE=	${PKGBASE:S/go-//}-${GITHUB_TAG}
GO_SRCPATH=	gopkg.in/alecthomas/kingpin.v3-unstable

.include "../../devel/go-i18n/buildlink3.mk"
.include "../../devel/go-yaml/buildlink3.mk"
.include "../../math/go-units/buildlink3.mk"
.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
