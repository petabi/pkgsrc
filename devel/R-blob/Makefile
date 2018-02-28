# $NetBSD$

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/hadley/blob
COMMENT=	Simple S3 class for representing vectors of binary data
LICENSE=	gnu-gpl-v3

R_PKGNAME=	blob
R_PKGVER=	1.1.0

DEPENDS+=	R-tibble-[0-9]*:../../math/R-tibble

USE_LANGUAGES=	# none

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
