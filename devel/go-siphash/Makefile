# $NetBSD: Makefile,v 1.2 2018/03/04 15:52:16 bsiegert Exp $

GITHUB_TAG=	v1.0.0
DISTNAME=	${GITHUB_TAG}
DIST_SUBDIR=	go-siphash
PKGNAME=	${DIST_SUBDIR}-${GITHUB_TAG:S/v//}
PKGREVISION=	1
CATEGORIES=	devel security
MASTER_SITES=	${MASTER_SITE_GITHUB:=dchest/}
GITHUB_PROJECT=	siphash

MAINTAINER=	alnsn@NetBSD.org
HOMEPAGE=	https://github.com/dchest/siphash
COMMENT=	Go implementation of SipHash-2-4
LICENSE=	public-domain

WRKSRC=		${WRKDIR}
GO_DIST_BASE=	siphash-${GITHUB_TAG:S/v//}
GO_SRCPATH=	github.com/dchest/siphash

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
