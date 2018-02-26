# $NetBSD$

CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://cran.r-project.org/package=prophet
COMMENT=	Automatic forecasting procedure
LICENSE=	modified-bsd

R_PKGNAME=	prophet
R_PKGVER=	0.2.1

DEPENDS+=	R-dplyr>=0.5.0:../../math/R-dplyr
DEPENDS+=	R-extraDistr-[0-9]*:../../math/R-extraDistr
DEPENDS+=	R-ggplot2-[0-9]*:../../graphics/R-ggplot2
DEPENDS+=	R-scales-[0-9]*:../../graphics/R-scales
DEPENDS+=	R-tidyr>=0.6.1:../../math/R-tidyr

USE_LANGUAGES=	c++11

BUILDLINK_API_DEPENDS.R-Rcpp+=	R-Rcpp>=0.12.0
.include "../../devel/R-Rcpp/buildlink3.mk"
BUILDLINK_API_DEPENDS.R+=	R>=3.2.3
.include "../../math/R/Makefile.extension"
.include "../../math/R-rstan/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
