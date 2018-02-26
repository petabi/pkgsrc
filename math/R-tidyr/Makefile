# $NetBSD$

CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://tidyr.tidyverse.org/
COMMENT=	Easily Tidy Data with spread() and gather() Functions
LICENSE=	mit

R_PKGNAME=	tidyr
R_PKGVER=	0.8.0

DEPENDS+=	R-dplyr>=0.7.0:../../math/R-dplyr
DEPENDS+=	R-glue-[0-9]*:../../devel/R-glue
DEPENDS+=	R-magrittr-[0-9]*:../../devel/R-magrittr
DEPENDS+=	R-purrr-[0-9]*:../../devel/R-purrr
DEPENDS+=	R-rlang-[0-9]*:../../devel/R-rlang
DEPENDS+=	R-stringi-[0-9]*:../../textproc/R-stringi
DEPENDS+=	R-tibble-[0-9]*:../../math/R-tibble
DEPENDS+=	R-tidyselect-[0-9]*:../../devel/R-tidyselect

USE_LANGUAGES=	c++

.include "../../devel/R-Rcpp/buildlink3.mk"
BUILDLINK_API_DEPENDS.R+=	R>=3.2.0
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
