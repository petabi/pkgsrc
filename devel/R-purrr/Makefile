# $NetBSD$

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://purrr.tidyverse.org/
COMMENT=	Functional programming tools
LICENSE=	gnu-gpl-v3

R_PKGNAME=	purrr
R_PKGVER=	0.2.4

DEPENDS+=	R-magrittr>=1.5:../../devel/R-magrittr
DEPENDS+=	R-rlang>=0.1:../../devel/R-rlang
DEPENDS+=	R-tibble-[0-9]*:../../math/R-tibble

USE_LANGUAGES=	c

BUILDLINK_API_DEPENDS.R+=	R>=3.1.0
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
