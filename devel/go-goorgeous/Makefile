# $NetBSD: Makefile,v 1.18 2019/12/13 07:43:57 bsiegert Exp $

DISTNAME=	goorgeous-2.0.0
PKGNAME=	go-${DISTNAME}
MASTER_SITES=	${MASTER_SITE_GITHUB:=chaseadamsio/}
CATEGORIES=	devel
GITHUB_TAG=	v${PKGVERSION_NOREV}
GITHUB_PROJECT= ${PKGBASE:S/^go-//}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/chaseadamsio/goorgeous
COMMENT=	Go org syntax parser to HTML
LICENSE=	mit

GO_DIST_BASE=	${GITHUB_PROJECT}-${PKGVERSION_NOREV}
GO_SRCPATH=	github.com/chaseadamsio/goorgeous

.include "../../devel/go-blackfriday/buildlink3.mk"
.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
