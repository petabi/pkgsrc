# $NetBSD$

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://dplyr.tidyverse.org/
COMMENT=	Grammar of data manipulation
LICENSE=	mit

R_PKGNAME=	dplyr
R_PKGVER=	0.7.4

DEPENDS+=	R-R6-[0-9]*:../../devel/R-R6
DEPENDS+=	R-assertthat-[0-9]*:../../devel/R-assertthat
DEPENDS+=	R-glue>=1.1.1:../../devel/R-glue
DEPENDS+=	R-magrittr-[0-9]*:../../devel/R-magrittr
DEPENDS+=	R-pkgconfig-[0-9]*:../../devel/R-pkgconfig
DEPENDS+=	R-rlang>=0.1.2:../../devel/R-rlang
DEPENDS+=	R-tibble-[0-9]*:../../math/R-tibble

USE_LANGUAGES=	c c++11

.include "../../devel/R-BH/buildlink3.mk"
.include "../../devel/R-Rcpp/buildlink3.mk"
.include "../../devel/R-bindrcpp/buildlink3.mk"
.include "../../devel/R-plogr/buildlink3.mk"
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
