# $NetBSD: Makefile,v 1.4 2018/03/04 15:52:16 bsiegert Exp $

DISTNAME=	sanitized_anchor_name-0.0.20151028
PKGNAME=	go-${DISTNAME}
PKGREVISION=	1
MASTER_SITES=	${MASTER_SITE_GITHUB:=shurcooL/}
CATEGORIES=	devel
GITHUB_TAG=	10ef21a441db47d8b13ebcc5fd2310f636973c77
GITHUB_PROJECT= ${PKGBASE:S/^go-//}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/shurcooL/sanitized_anchor_name
COMMENT=	Create sanitized anchor names
LICENSE=	mit

GO_DIST_BASE=	${GITHUB_PROJECT}-${GITHUB_TAG}
GO_SRCPATH=	github.com/shurcooL/sanitized_anchor_name

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
