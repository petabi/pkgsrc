# $NetBSD$

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/tidyverse/glue
COMMENT=	Small, fast, dependency free interpreted string literals
LICENSE=	mit

R_PKGNAME=	glue
R_PKGVER=	1.2.0

USE_LANGUAGES=	c

BUILDLINK_API_DEPENDS.R+=	R>=3.1
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
