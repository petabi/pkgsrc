# $NetBSD: Makefile,v 1.4 2018/03/04 15:52:14 bsiegert Exp $

DISTNAME=	go-i18n-1.8.1
MASTER_SITES=	${MASTER_SITE_GITHUB:=nicksnyder/}
PKGREVISION=	1
CATEGORIES=	devel
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/nicksnyder/go-i18n/
COMMENT=	Translate your Go program into multiple languages
LICENSE=	mit

GO_DIST_BASE=	${DISTNAME}
GO_SRCPATH=	github.com/nicksnyder/go-i18n

.include "../../www/go-toml-pelletier/buildlink3.mk"
.include "../../devel/go-yaml/buildlink3.mk"
.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
