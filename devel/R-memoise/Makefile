# $NetBSD$

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/hadley/memoise
COMMENT=	Memoisation of functions
LICENSE=	mit

R_PKGNAME=	memoise
R_PKGVER=	1.1.0

DEPENDS+=	R-digest>=0.6.3:../../security/R-digest

USE_LANGUAGES=	# none

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
