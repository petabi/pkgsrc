# $NetBSD$

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://cran.r-project.org/package=tidyselect
COMMENT=	Backend for the selecting functions of tidyverse
LICENSE=	gnu-gpl-v3

R_PKGNAME=	tidyselect
R_PKGVER=	0.2.4

DEPENDS+=	R-glue-[0-9]*:../../devel/R-glue
DEPENDS+=	R-purrr-[0-9]*:../../devel/R-purrr
DEPENDS+=	R-rlang>=0.2.0:../../devel/R-rlang

USE_LANGUAGES=	c++

BUILDLINK_API_DEPENDS.R-Rcpp+=	R-Rcpp>=0.12.0
.include "../../devel/R-Rcpp/buildlink3.mk"
BUILDLINK_API_DEPENDS.R+=	R>=3.1
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
