# $NetBSD$

CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://mc-stan.org/
COMMENT=	R interface to Stan
LICENSE=	gnu-gpl-v3

R_PKGNAME=	rstan
R_PKGVER=	2.17.3

DEPENDS+=	R-inline-[0-9]*:../../devel/R-inline
DEPENDS+=	R-ggplot2>=2.0.0:../../graphics/R-gridExtra
DEPENDS+=	R-gridExtra>=2.0.0:../../graphics/R-gridExtra

USE_LANGUAGES=	c++

.include "../../devel/R-BH/buildlink3.mk"
BUILDLINK_API_DEPENDS.R-Rcpp+=	R-Rcpp>=0.12.0
.include "../../devel/R-Rcpp/buildlink3.mk"
.include "../../math/R-RcppEigen/buildlink3.mk"
.include "../../math/R-StanHeaders/buildlink3.mk"
BUILDLINK_API_DEPENDS.R+=	R>=3.0.2
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
